import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/utils/constants/colors.dart';

class OpulentRatingBarIndicator extends StatelessWidget {
  const OpulentRatingBarIndicator({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: OpulentColors.grey,
      itemBuilder: (_, index) => Icon(
        Iconsax.star1,
        color: OpulentColors.primary,
      ),
    );
  }
}
