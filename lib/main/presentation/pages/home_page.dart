import 'package:flutter/material.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';
import 'package:manzil/main/presentation/pages/home_pages/main_page.dart';
import 'package:manzil/orders/presentation/pages/orders_page.dart';

import 'package:manzil/main/presentation/pages/home_pages/profile_page.dart';

import 'package:manzil/main/presentation/widgets/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int selectedIndex = 1;
  late TabController controller;
  late PageController pageController;
  @override
  void initState() {
    controller = TabController(
      length: 3,
      vsync: this,
      initialIndex: 1,
    );
    pageController = PageController(initialPage: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (value) {},
        controller: pageController,
        children: const [
          OrdersPage(),
          MainPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        controller: controller,
        index: selectedIndex,
        selectPage: (index) {
          getDeviceInfo(context);

          pageController.animateToPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastEaseInToSlowEaseOut,
              index);
          selectedIndex = index;

          setState(() {});
        },
      ),
    );
  }
}
