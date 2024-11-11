import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/widgets/confirm_button.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/main/domain/location_model.dart';
import 'package:manzil/orders/application/app_location.dart';
import 'package:manzil/orders/bloc/trip_bloc.dart';

import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapPage extends StatefulWidget {
  final bool isTo;
  const MapPage({super.key, this.isTo = false});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  String? address;
  AppLatLong? selectedLocation;
  Point point = const Point(latitude: 0, longitude: 0);
  final controllerCompleter = Completer<YandexMapController>();

  Future<void> _fetchCurrentLocation() async {
    AppLatLong location;
    const defLocation = AppLatLong(lat: 41.294071, long: 69.245807);
    try {
      location = await LocationService.getCurrentLocation();
    } catch (_) {
      location = defLocation;
    }
    _moveToCurrentLocation(location);
  }

  Future<void> _moveToCurrentLocation(AppLatLong appLatLong,
      {double zoom = 12}) async {
    (await controllerCompleter.future).moveCamera(
      animation: const MapAnimation(type: MapAnimationType.linear, duration: 1),
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: Point(
            latitude: appLatLong.lat,
            longitude: appLatLong.long,
          ),
          zoom: zoom,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _fetchCurrentLocation();
    LocationService.initPermission();
  }

  final List<MapObject> _mapObjects = [];
  void _onMapTap(Point point) async {
    final place = [
      PlacemarkMapObject(
        mapId: const MapObjectId('placemark_1'),
        point: point,
        opacity: 1,
        icon: PlacemarkIcon.single(
          PlacemarkIconStyle(
            zIndex: 2,
            scale: 1.5,
            image: BitmapDescriptor.fromAssetImage(
              Assets.icons.redPoint.path,
            ),
          ),
        ),
      )
    ];
    _mapObjects.addAll(place);
    final searchSession = await YandexSearch.searchByPoint(
      point: point,
      searchOptions: SearchOptions(
        userPosition: point,
        searchType: SearchType.direct,
      ),
    );
    final result = await searchSession.$2;
    final String firstAddress = result.items!.first.name;
    address = firstAddress;
    selectedLocation = AppLatLong(lat: point.latitude, long: point.longitude);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("value ${widget.isTo}");
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.white,
        title: Text(l10n.selectFromWhere),
        backgroundColor: AppColors.appbarBackground,
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                YandexMap(
                  onMapCreated: (controller) {
                    controllerCompleter.complete(controller);
                  },
                  mapObjects: _mapObjects,
                  onMapTap: (argument) async {
                    _onMapTap(argument);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15, right: 10),
                  child: FloatingActionButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: AppColors.whitePearl,
                    elevation: 5,
                    onPressed: () async {
                      final location =
                          await LocationService.getCurrentLocation();
                      await _moveToCurrentLocation(location);
                    },
                    child: SvgPicture.asset(
                      Assets.icons.locationGreen,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(address ?? l10n.selectFromWhere),
                const Gap(10),
                const DividerWithoutIndent(),
                const Gap(10),
                ConfirmButton(
                  title: l10n.next,
                  onPressed: () {
                    if (selectedLocation == null) {
                      showSnackBar(
                        context,
                        "Please, select location",
                        isError: true,
                      );
                    } else {
                      if (widget.isTo) {
                        context
                            .read<TripBloc>()
                            .changeToAddress(selectedLocation!, address!);
                        Navigator.of(context).pop();
                      } else {
                        context
                            .read<TripBloc>()
                            .changeFromAddress(selectedLocation!, address!);
                        Navigator.of(context).pop();
                      }
                    }
                  },
                ),
                const Gap(10)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
