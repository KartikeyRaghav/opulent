import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/appbar/appbar.dart';
import 'package:opulent/features/shop/screens/orders/widgets/orders_list.dart';
import 'package:opulent/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OpulentAppbar(
        showBackArrow: true,
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(OpulentSizes.defaultSpace),
        child: OpulentOrderListItems(),
      ),
    );
  }
}
