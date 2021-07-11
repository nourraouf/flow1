import 'package:flow/stateless/my_order.dart';
import 'package:flutter/material.dart';
import '../color.dart';
import '../constants.dart';

class MyOrdersScreen extends StatefulWidget {
  @override
  _MyOrdersScreenState createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.solidWhite,
        title: const Text(
          'طلباتي',
          style: FontStyles.appbarStyle,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          MyOrder(
            duration: 'ساعتين',
            from: 'القاهرة',
            price: 200,
            to: 'الاسماعيلية',
            truckType: 'نقل طعام',
            orderID: '17256',
          ),
          MyOrder(
            duration: 'ساعتين',
            from: 'القاهرة',
            price: 200,
            to: 'الاسماعيلية',
            truckType: 'نقل طعام',
            orderID: '17256',
          ),
        ],
      ),
    );
  }
}
