import 'package:flutter/material.dart';
import 'package:opulent/features/shop/screens/product_reviews/widgets/progres_indicator_rating.dart';

class OpulentOverallProductRating extends StatelessWidget {
  const OpulentOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              OpulentRatingProgressIndicator(
                text: '5',
                value: 0.9,
              ),
              OpulentRatingProgressIndicator(
                text: '4',
                value: 0.7,
              ),
              OpulentRatingProgressIndicator(
                text: '3',
                value: 0.5,
              ),
              OpulentRatingProgressIndicator(
                text: '2',
                value: 0.3,
              ),
              OpulentRatingProgressIndicator(
                text: '1',
                value: 0.1,
              ),
            ],
          ),
        )
      ],
    );
  }
}
