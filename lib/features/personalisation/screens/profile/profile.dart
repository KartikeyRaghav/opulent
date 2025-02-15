import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/common/widgets/appbar/appbar.dart';
import 'package:opulent/common/widgets/images/circular_image.dart';
import 'package:opulent/common/widgets/texts/section_heading.dart';
import 'package:opulent/features/personalisation/screens/profile/widgets/profile_menu.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OpulentAppbar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OpulentSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    OpulentCircularImage(
                      image: OpulentImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Change Profile Picture'),
                    )
                  ],
                ),
              ),
              SizedBox(height: OpulentSizes.spaceBtwItems / 2),
              Divider(),
              SizedBox(height: OpulentSizes.spaceBtwItems),
              OpulentSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              SizedBox(height: OpulentSizes.spaceBtwItems),
              OpulentProfileMenu(
                onPressed: () {},
                title: 'Name',
                value: 'Opulent',
              ),
              OpulentProfileMenu(
                onPressed: () {},
                title: 'Username',
                value: 'opulent',
              ),
              SizedBox(height: OpulentSizes.spaceBtwItems),
              Divider(),
              SizedBox(height: OpulentSizes.spaceBtwItems),
              OpulentSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              SizedBox(height: OpulentSizes.spaceBtwItems),
              OpulentProfileMenu(
                onPressed: () {},
                icon: Iconsax.copy,
                title: 'User ID',
                value: '4569',
              ),
              OpulentProfileMenu(
                onPressed: () {},
                title: 'E-Mail',
                value: 'support@opulent.com',
              ),
              OpulentProfileMenu(
                onPressed: () {},
                title: 'Phone Number',
                value: '+91-9711249305',
              ),
              OpulentProfileMenu(
                onPressed: () {},
                title: 'Gender',
                value: 'Male',
              ),
              OpulentProfileMenu(
                onPressed: () {},
                title: 'Date of Birth',
                value: '22 July 2006',
              ),
              Divider(),
              SizedBox(height: OpulentSizes.spaceBtwItems),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Close Account',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
