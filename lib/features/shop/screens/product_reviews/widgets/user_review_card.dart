import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:opulent/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(OpulentImages.userProfileImage1),
                ),
                SizedBox(width: OpulentSizes.spaceBtwItems),
                Text(
                  'Anshu Pathak',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
        SizedBox(height: OpulentSizes.spaceBtwItems),
        Row(
          children: [
            OpulentRatingBarIndicator(rating: 4),
            SizedBox(width: OpulentSizes.spaceBtwItems),
            Text(
              '16 Feb 2025',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(height: OpulentSizes.spaceBtwItems),
        ReadMoreText(
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut debitis modi repellat soluta repudiandae ducimus velit repellendus unde accusamus corporis. Quo, recusandae corporis natus nostrum quod quibusdam hic cum esse reiciendis pariatur inventore explicabo eaque vero. Repellat maxime animi consectetur nobis omnis aspernatur, esse non ut nostrum recusandae eveniet optio earum quo modi obcaecati incidunt vitae distinctio saepe, aperiam corporis?',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: ' show more',
          trimExpandedText: ' show less',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: OpulentColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: OpulentColors.primary,
          ),
        ),
        SizedBox(height: OpulentSizes.spaceBtwItems),
        OpulentRoundedContainer(
          backgroundColor: dark ? OpulentColors.darkerGrey : OpulentColors.grey,
          child: Padding(
            padding: EdgeInsets.all(OpulentSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Opulent Store',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '16 Feb 2025',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(height: OpulentSizes.spaceBtwItems),
                ReadMoreText(
                  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut debitis modi repellat soluta repudiandae ducimus velit repellendus unde accusamus corporis. Quo, recusandae corporis natus nostrum quod quibusdam hic cum esse reiciendis pariatur inventore explicabo eaque vero. Repellat maxime animi consectetur nobis omnis aspernatur, esse non ut nostrum recusandae eveniet optio earum quo modi obcaecati incidunt vitae distinctio saepe, aperiam corporis?',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' show more',
                  trimExpandedText: ' show less',
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: OpulentColors.primary,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: OpulentColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: OpulentSizes.spaceBtwSections),
      ],
    );
  }
}
