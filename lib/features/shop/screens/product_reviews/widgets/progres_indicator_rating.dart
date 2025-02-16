import 'package:flutter/material.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/device/device_utility.dart';

class OpulentRatingProgressIndicator extends StatelessWidget {
  const OpulentRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: OpulentDeviceUtils.getScreenWidth(context) * 0.5,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              backgroundColor: OpulentColors.grey,
              valueColor: AlwaysStoppedAnimation(
                OpulentColors.primary,
              ),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        )
      ],
    );
  }
}
