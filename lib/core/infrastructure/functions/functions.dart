// ignore_for_file: use_build_context_synchronously

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:manzil/auth/bloc/user_bloc.dart';
import 'package:manzil/core/bloc/user_data_bloc.dart';
import 'package:manzil/core/domain/car_model.dart';
import 'package:manzil/core/domain/car_brand_model.dart';
import 'package:manzil/core/domain/class_model.dart';
import 'package:manzil/core/domain/district_model.dart';
import 'package:manzil/core/domain/region_model.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/localization/domain/language_model.dart';
import 'package:manzil/orders/bloc/trip_bloc.dart';
import 'package:manzil/main/presentation/pages/home_pages/create_trip_page.dart';
import 'package:manzil/routes/route_names.dart';

List<RegionModel> getRegions(List json) {
  List<RegionModel> regions = [];
  for (Map<String, dynamic> i in json) {
    RegionModel region = RegionModel.fromJson(i);
    regions.add(region);
  }
  return regions;
}

List<DistrictModel> getDistricts(List json) {
  List<DistrictModel> districts = [];
  for (Map<String, dynamic> i in json) {
    DistrictModel region = DistrictModel.fromJson(i);
    districts.add(region);
  }
  return districts;
}

List<CarClassModel> getClasses(List json) {
  List<CarClassModel> districts = [];
  for (Map<String, dynamic> i in json) {
    CarClassModel region = CarClassModel.fromJson(i);
    districts.add(region);
  }
  return districts;
}

List<CarBrandModel> getCarBrands(List json) {
  List<CarBrandModel> districts = [];
  for (Map<String, dynamic> i in json) {
    CarBrandModel region = CarBrandModel.fromJson(i);
    districts.add(region);
  }
  return districts;
}

List<CarModel> getAutoModels(List json) {
  List<CarModel> districts = [];
  for (Map<String, dynamic> i in json) {
    CarModel region = CarModel.fromJson(i);
    districts.add(region);
  }
  return districts;
}

String formatDate(DateTime date) {
  final DateFormat formatter = DateFormat('yyyy d MMMM');
  return formatter.format(date);
}

DateTime formatFromStringToDate(String date) {
  DateFormat formatter = DateFormat('yyyy-MM-dd');
  DateTime dateTime = formatter.parse(date);
  return dateTime;
}

String formatFromDateToString(DateTime date) {
  DateFormat formatter = DateFormat('yyyy-MM-dd');
  String formattedDate = formatter.format(date);
  return formattedDate;
}

void showSnackBar(BuildContext context, String title, {bool isError = false}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(milliseconds: 800),
      content: Text(title,
          style:
              AppStyles.fontSize16Weight400.copyWith(color: AppColors.white)),
      backgroundColor: isError ? Colors.red : AppColors.appbarBackground,
    ),
  );
}

void showSelectDialog(BuildContext context, Widget child,
    {bool isShort = false}) {
  showModalBottomSheet(
    isDismissible: false,
    enableDrag: false,
    isScrollControlled: true,
    // constraints: const BoxConstraints(minHeight: 900),
    useSafeArea: true,
    context: context,
    builder: (context) {
      return
          // SizedBox(
          //   height: null,
          //   child: child,
          // );
          DraggableScrollableSheet(
        initialChildSize: isShort ? 0.4 : 0.8,
        expand: false,
        // initialChildSize: 1,
        // minChildSize: 0.25,
        maxChildSize: 1,
        builder: (context, scrollController) {
          return child;
        },
      );
    },
  );
}

String? nullTitle(String? title) {
  if (title == null || title.isEmpty) {
    return null;
  } else {
    return title;
  }
}

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar(
    this.title, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: AppColors.white,
      title: Text(title),
      backgroundColor: AppColors.appbarBackground,
      actions: [
        IconButton(
          onPressed: () =>
              Navigator.of(context).pushNamed(AppRouteNames.languageChangePage),
          icon: SvgPicture.asset(
            Assets.icons.global,
          ),
        )
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      endIndent: 15,
      indent: 15,
      thickness: 0.8,
      height: 0,
      color: AppColors.grey,
    );
  }
}

class DividerWithoutIndent extends StatelessWidget {
  const DividerWithoutIndent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 0.8,
      endIndent: 5,
      indent: 5,
      color: AppColors.grey,
    );
  }
}

void showBirthdayPicker(BuildContext context) async {
  final date = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime.now().subtract(const Duration(days: 72000)),
    lastDate: DateTime.now(),
  );
  if (date == null) {
    return;
  }
  context.read<UserBloc>().changeBirthday(date);
}

void showTripdayPicker(BuildContext context) async {
  final date = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime.now(),
    lastDate: DateTime.now().add(const Duration(days: 72000)),
  );
  if (date == null) {
    return;
  }
  context.read<TripBloc>().changeTripday(date);
}

void showTriptimePicker(BuildContext context, {bool isFrom = false}) async {
  final time = await showTimePicker(
    context: context,
    initialTime: const TimeOfDay(hour: 0, minute: 0),
  );
  if (time == null) {
    return;
  }
  final hour = time.hour < 10 ? "0${time.hour}" : time.hour.toString();
  final minute = time.minute < 10 ? "0${time.minute}" : time.minute.toString();
  final selectedTime = "$hour:$minute:00";

  if (isFrom) {
    context.read<TripBloc>().changeFromTime(selectedTime);
  } else {
    context.read<TripBloc>().changeToTime(selectedTime);
  }
}

String getTripType(int type, BuildContext context) {
  final l10n = context.l10n;
  if (type == 0) {
    return l10n.taxi;
  } else if (type == 1) {
    return l10n.delivery;
  } else if (type == 2) {
    return l10n.towTruck;
  } else if (type == 3) {
    return l10n.driverServices;
  }
  return '';
}

Duration timeLeft(String date, String time) {
  try {
    final DateTime targetDateTime =
        DateFormat("yyyy-MM-dd HH:mm:ss").parse('$date $time');
    final DateTime now = DateTime.now();

    final Duration difference = targetDateTime.difference(now);
    return difference.isNegative ? Duration.zero : difference;
  } catch (e) {
    return Duration.zero;
  }
}

String getCountryName(int countryId, BuildContext context) {
  if (countryId == 1) {
    return "O'zbekiston";
  }
  return 'unkown';
}

String getRegionName(int regionId, BuildContext context) {
  final regions = context.watch<UserDataBloc>().state.regions;
  if (regions.any((element) => element.id == regionId)) {
    final region = regions.firstWhere((element) => element.id == regionId);
    return region.name;
  }
  return "unknown";
}

String getClassName(int classId, BuildContext context) {
  final classes = context.watch<UserDataBloc>().state.classes;
  if (classes.any((element) => element.id == classId)) {
    final className = classes.firstWhere((element) => element.id == classId);
    return className.name;
  }
  return "unknown";
}

String getBrandName(int brandId, BuildContext context) {
  final brands = context.watch<UserDataBloc>().state.carBrands;
  if (brands.any((element) => element.id == brandId)) {
    final brand = brands.firstWhere((element) => element.id == brandId);
    return brand.name;
  }
  return "unknown";
}

String getDistrictName(int districtId, BuildContext context) {
  final districts = context.watch<UserDataBloc>().state.districts;
  if (districts.any((element) => element.id == districtId)) {
    final district =
        districts.firstWhere((element) => element.id == districtId);
    return district.name;
  }
  return "unkown";
}

String getTripTitle(TripType type, BuildContext context) {
  final l10n = context.l10n;
  switch (type) {
    case TripType.taxi:
      return l10n.taxi;
    case TripType.delivery:
      return l10n.delivery;
    case TripType.towTruck:
      return l10n.towTruck;
    case TripType.driverServices:
      return l10n.driverServices;
  }
}

AppLocale getLanguageType(String locale) {
  switch (locale) {
    case 'uz':
      return AppLocale.uzbek;
    case 'ru':
      return AppLocale.russian;
    case 'en':
      return AppLocale.english;
  }
  return AppLocale.english;
}

String getCarBrandName(int brandId, BuildContext context) {
  final carBrands = context.watch<UserDataBloc>().state.carBrands;
  if (carBrands.any((element) => element.id == brandId)) {
    final brand = carBrands.firstWhere((element) => element.id == brandId);
    return brand.name;
  }
  // final brand = carBrands.firstWhere((element) => element.id == brandId);
  return "empty";
}

String getCarModelName(int modelId, BuildContext context) {
  final models = context.watch<UserDataBloc>().state.carModels;
  if (models.any((element) => element.id == modelId)) {
    final brand = models.firstWhere((element) => element.id == modelId);
    return brand.name;
  }
  return "empty";
}
Future<void> getDeviceInfo(BuildContext context) async {
  try {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    String info = '';

    if (Theme.of(context).platform == TargetPlatform.android) {
      // Android device
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      info = 'Running on ${androidInfo.model}'; // e.g., Running on Pixel 3
    } else if (Theme.of(context).platform == TargetPlatform.iOS) {
      // iOS device
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      info =
          'Running on ${iosInfo.utsname.machine}'; // e.g., Running on iPhone 12 Pro
    }
    // IosDeviceInfo iosInfo = await deviceInfo.iosInfo;

    for (var i in info.runes) {
      print(i);
    }
    print("decide id:${info.runes.last.runtimeType}");
  } catch (e) {
    print("error in device id:$e");
  }
}