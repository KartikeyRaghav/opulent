import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:opulent/utils/constants/image_strings.dart';

class OpulentHomeCategories extends StatelessWidget {
  const OpulentHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return OpulentVerticalImageText(
            image: OpulentImages.shoeIcon,
            title: 'Shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}
