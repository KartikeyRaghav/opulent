import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/common/widgets/images/circular_image.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/image_strings.dart';

class OpulentUserProfileTile extends StatelessWidget {
  const OpulentUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: OpulentCircularImage(
        image: OpulentImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Opulent',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: OpulentColors.white),
      ),
      subtitle: Text(
        'support@opulent.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: OpulentColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(Iconsax.edit, color: OpulentColors.white),
      ),
    );
  }
}
