import 'package:flow/color.dart';
import 'package:flow/constants.dart';
import 'package:flow/stateless/continue_button.dart';
import 'package:flow/stateless/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AddReceiptScreen extends StatefulWidget {
  @override
  _AddReceiptScreenState createState() => _AddReceiptScreenState();
}

class _AddReceiptScreenState extends State<AddReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.solidWhite,
      appBar: OrderAppBar(
        title: 'الحساب البنكي',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: 108.7 / 375 * MediaQuery.of(context).size.width,
              height: 77.55 / 812 * MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/addimage.png',
                // fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: const Text(
                'أضف صورة',
                style: TextStyle(
                  fontFamily: 'Careem',
                  fontSize: 18,
                  color: AppColors.primaryOrange,
                ),
              ),
            ),
            const Text(
              'التقط صورة الإيصال وأرسلها',
              style: FontStyles.hintTextStyle,
            ),
            SizedBox(
              height: 0.5 * MediaQuery.of(context).size.height,
            ),
            ContinueButton(
              text: 'أضف الإيصال',
            )
          ],
        ),
      ),
    );
  }
}
