import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentChoiceChip extends StatelessWidget {
  const OpulentChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final choice = OpulentHelperFunctions.getColor(text);
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: choice != null ? SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? OpulentColors.white : null),
        avatar: choice != null
            ? OpulentCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: choice,
              )
            : null,
        selectedColor: Colors.green,
        shape: choice != null ? CircleBorder() : null,
        labelPadding: choice != null ? EdgeInsets.all(0) : null,
        padding: choice != null ? EdgeInsets.all(0) : null,
        backgroundColor: choice,
      ),
    );
  }
}
