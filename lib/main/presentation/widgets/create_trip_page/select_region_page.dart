import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:manzil/auth/presentation/widgets/car_page_widgets/select_item_widgets.dart';
import 'package:manzil/auth/presentation/widgets/personal_data_input.dart';
import 'package:manzil/core/bloc/user_data_bloc.dart';
import 'package:manzil/core/domain/region_model.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';
import 'package:manzil/core/presentation/widgets/confirm_button.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/orders/bloc/trip_bloc.dart';
import 'package:manzil/orders/presentation/pages/map_page.dart';

class SelectRegionPage extends HookWidget {
  final bool isTo;
  const SelectRegionPage({this.isTo = false, super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final data = context.watch<UserDataBloc>().state;
    final currentRegion = useState(const RegionModel(id: 0, name: ""));
    final trip = context.watch<TripBloc>().state;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: CustomAppBar(
          l10n.selectFromWhere,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Gap(10),
            PersonalDataInput(
              icon: Assets.icons.addSquare,
              title: currentRegion.value.id==0
                  ? null
                  : currentRegion.value.name,
              onTap: () {
                showSelectDialog(
                    context,
                    SelectItemWidget(
                      items: data.regions,
                      item: currentRegion,
                      title: l10n.selectRegion,
                    ));
              },
              hintText: l10n.region,
            ),
            const Gap(20),
            PersonalDataInput(
              icon: Assets.icons.greenPoint,
              title: isTo ? trip.toAddress : trip.fromAddress,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MapPage(
                    isTo: isTo,
                  ),
                ));
              },
              hintText: l10n.showInMap,
            ),
            Expanded(child: Container()),
            ConfirmButton(
              title: l10n.next,
              onPressed: () {
                final isAddressEmpty =
                    isTo ? trip.toAddress == null : trip.fromAddress == null;
                if (currentRegion.value.id==0 || isAddressEmpty) {
                  showSnackBar(context, l10n.fillAllForms, isError: true);
                  return;
                }
                context
                    .read<TripBloc>()
                    .changeRegion(currentRegion.value, isTo);
                Navigator.of(context).pop();
              },
            ),
            const Gap(10),
          ],
        ),
      ),
    );
  }
}
