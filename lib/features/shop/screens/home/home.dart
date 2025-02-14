import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:opulent/features/shop/screens/home/widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            OpulentPrimaryHeaderContainer(
              child: Column(
                children: [
                  OpulentHomeAppBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
