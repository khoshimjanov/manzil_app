import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:manzil/core/infrastructure/extensions/context_extensions.dart';
import 'package:manzil/core/presentation/style/colors.dart';
import 'package:manzil/core/presentation/style/theme.dart';

class CountdownTimer extends StatefulWidget {
  final Duration duration;
  const CountdownTimer({super.key, required this.duration});

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late Duration _duration;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _duration = widget.duration;
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_duration.inSeconds > 0) {
          _duration -= const Duration(seconds: 1);
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final days = _duration.inDays;
    final hours = _duration.inHours % 24;
    final minutes = _duration.inMinutes % 60;
    final seconds = _duration.inSeconds % 60;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTimeUnit(days, l10n.days),
        const Gap(10),
        _buildColon(),
        const Gap(10),
        _buildTimeUnit(hours, l10n.hours),
        const Gap(10),
        _buildColon(),
        const Gap(10),
        _buildTimeUnit(minutes, l10n.minutes),
        const Gap(10),
        _buildColon(),
        _buildTimeUnit(seconds, l10n.seconds),
      ],
    );
  }

  Widget _buildTimeUnit(int value, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value.toString().padLeft(2, '0'),
          style: AppStyles.fontSize20Weight700.copyWith(
            color: _duration == Duration.zero
                ? AppColors.greyText
                : AppColors.appbarBackground,
          ),
        ),
        Text(
          label,
          style:
              AppStyles.fontSize14Weight500.copyWith(color: AppColors.greyText),
        ),
      ],
    );
  }

  Widget _buildColon() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(':',
            style: AppStyles.fontSize18Weight600.copyWith(
              color: _duration == Duration.zero
                  ? AppColors.greyText
                  : AppColors.appbarBackground,
            )
            //),
            ),
        const SizedBox(height: 22)
      ],
    );
  }
}
