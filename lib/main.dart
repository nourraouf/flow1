import 'package:flow/stateful/add_receipt.dart';
import 'package:flow/stateful/bank_accounts.dart';
import 'package:flow/stateful/my__order_screen.dart';
import 'package:flow/stateful/add_order.dart';
import 'package:flow/stateful/order_recevier.dart';
import 'package:flow/stateless/my_order.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: AddOrder(),
      ),
    );
  }
}
