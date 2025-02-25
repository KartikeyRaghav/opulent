import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/appbar/appbar.dart';
import 'package:opulent/common/widgets/products/sortable/sortable_products.dart';
import 'package:opulent/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OpulentAppbar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OpulentSizes.defaultSpace),
          child: OpulentSortableProducts(),
        ),
      ),
    );
  }
}
