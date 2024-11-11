
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:manzil/auth/bloc/user_bloc.dart';

import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';
import 'package:manzil/main/domain/trip_model.dart';
import 'package:manzil/orders/bloc/trips_bloc.dart';
import 'package:manzil/orders/bloc/trips_state.dart';
import 'package:manzil/orders/presentation/widgets/orders_page_widgets/order_page_item.dart';
import 'package:manzil/orders/presentation/widgets/orders_page_widgets/request_page_item.dart';
import 'package:manzil/orders/presentation/widgets/select_type_widget.dart';

class OrdersPage extends HookWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final isMyOrders = useState(false);
    final controller = PageController();
    return BlocBuilder<TripsBloc, TripsState>(
      builder: (context, state) {
        final ownerId = int.parse(context.watch<UserBloc>().state.id);
        print("id is :$ownerId");
        final List<TripModel> myTrips = state.trips
            .where(
              (element) => element.ownerId == ownerId,
            )
            .toList();

        final List<TripModel> trips = state.trips
            .where(
              (element) => element.ownerId != ownerId,
            )
            .toList();

        return Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size(double.infinity, 60),
              child: CustomAppBar(l10n.profile)),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SelectTypeWidget(
                        title: l10n.myOrders,
                        onTap: () {
                          isMyOrders.value = false;
                          controller.jumpToPage(0);
                        },
                        isSelected: isMyOrders.value == false,
                      ),
                    ),
                    const Gap(20),
                    Expanded(
                      child: SelectTypeWidget(
                        title: l10n.allOrders,
                        onTap: () {
                          isMyOrders.value = true;
                          controller.jumpToPage(1);
                        },
                        isSelected: isMyOrders.value,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: controller,
                    children: [
                      state.status == TripStateStatus.loading
                          ? const Center(child: CupertinoActivityIndicator())
                          : state.status == TripStateStatus.loadedWithError
                              ? const Text("something went wrong")
                              : SingleChildScrollView(
                                  child: ListView.builder(
                                    itemCount:
                                        myTrips.length,
                                    physics: const BouncingScrollPhysics(),
                                    itemBuilder: (context, i) {
                                      return OrderPageItem(
                                        trip: myTrips[i], 
                                      );
                                    },
                                    shrinkWrap: true,
                                  ),
                                ),
                      SingleChildScrollView(
                        child: ListView.builder(
                          itemCount: trips.length,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, i) {
                            return RequestPageItem(
                              trip: trips[i],
                            );
                          },
                          shrinkWrap: true,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
