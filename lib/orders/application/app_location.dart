import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:manzil/main/domain/location_model.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class LocationService {
  static Future<void> initPermission() async {
    if (!await LocationService.checkPermission()) {
      await LocationService.requestPermission();
    }
  }

  static Future<AppLatLong> getCurrentLocation() async {
    return Geolocator.getCurrentPosition().then((value) {
      return AppLatLong(lat: value.latitude, long: value.longitude);
    }).catchError(
      (_) {
        return const AppLatLong(lat: 41.294071, long: 69.245807);
      },
    );
  }

  static Future<bool> requestPermission() {
    return Geolocator.requestPermission()
        .then((value) =>
            value == LocationPermission.always ||
            value == LocationPermission.whileInUse)
        .catchError((_) => false);
  }

  static Future<bool> checkPermission() {
    return Geolocator.checkPermission()
        .then((value) =>
            value == LocationPermission.always ||
            value == LocationPermission.whileInUse)
        .catchError((_) => false);
  }

  static Future<void> moveToCurrentLocation(
      AppLatLong appLatLong, Completer<YandexMapController> controllerCompleter,
      {double zoom = 12}) async {
    (await controllerCompleter.future).moveCamera(
        animation:
            const MapAnimation(type: MapAnimationType.linear, duration: 1),
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: Point(
              latitude: appLatLong.lat,
              longitude: appLatLong.long,
            ),
            zoom: zoom,
          ),
        ));
  }
}
