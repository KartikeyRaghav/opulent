import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/appbar/appbar.dart';
import 'package:opulent/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:opulent/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:opulent/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:opulent/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OpulentAppbar(
        title: Text('Ratings & Reviews'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(OpulentSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              SizedBox(height: OpulentSizes.spaceBtwItems),
              OpulentOverallProductRating(),
              OpulentRatingBarIndicator(rating: 3.5),
              Text(
                '12,611',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: OpulentSizes.spaceBtwSections),
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
