import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/infrastructure/functions/functions.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';
import 'package:manzil/gen/assets.gen.dart';
import 'package:manzil/orders/bloc/trips_bloc.dart';

class RequestButton extends StatelessWidget {
  const RequestButton({
    super.key,
    required this.title,
    required this.requestTitle,
    required this.isDeny,
    required this.reqeustId,
  });
  final String title;
  final String requestTitle;
  final bool isDeny;
  final int reqeustId;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = context.l10n;
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 7),
      onPressed: () {
        // onPressed();
        showCupertinoDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            title: Text(l10n.sendRequestTitle),
            actions: [
              CupertinoButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Column(
                  children: [
                    SvgPicture.asset(Assets.icons.cancel),
                    const Gap(3),
                    const Text("No")
                  ],
                ),
              ),
              CupertinoButton(
                onPressed: () {
                  if (isDeny) {
                    context.read<TripsBloc>().denyRequest(reqeustId).then(
                      (value) {
                        if (value) {
                          showSnackBar(context, "Request Cancelled");
                        } else {
                          showSnackBar(context, "Request not cancelled",
                              isError: true);
                        }
                      },
                    );
                  } else {
                    context.read<TripsBloc>().acceptRequest(reqeustId).then(
                      (value) {
                        if (value) {
                          showSnackBar(context, "Request Accepted");
                        } else {
                          showSnackBar(context, "Request not accepted",
                              isError: true);
                        }
                      },
                    );
                  }
                  Future.delayed(const Duration(milliseconds: 500)).then(
                    (value) {
                      Navigator.of(context).pop();
                    },
                  );
                },
                child: Column(
                  children: [
                    SvgPicture.asset(Assets.icons.confirm),
                    const Gap(5),
                    const Text("Yes")
                  ],
                ),
              ),
            ],
          ),
        );
      },
      elevation: 0,
      highlightElevation: 0,
      color: isDeny ? AppColors.lightGreen : AppColors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        title,
        style: AppStyles.fontSize16Weight400.copyWith(
          color: isDeny ? AppColors.appbarBackground : AppColors.black,
        ),
      ),
    );
  }
}
