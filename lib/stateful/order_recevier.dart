import 'package:flow/stateless/add_order_field.dart';
import 'package:flow/stateless/continue_button.dart';
import 'package:flow/stateless/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../color.dart';
import '../constants.dart';

class OrderRecevier extends StatefulWidget {
  @override
  _OrderRecevierState createState() => _OrderRecevierState();
}

class _OrderRecevierState extends State<OrderRecevier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.solidWhite,
      appBar: OrderAppBar(
        title: 'أضافة طلب',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: 313,
              height: 226,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.solidWhite,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 6,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'وصف الأيجابيات',
                      style: FontStyles.hintTextStyle,
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                  )
                ],
              ),
            ),
            OrderField(
              hintText: 'Yousef bsher',
              style: FontStyles.recevierData,
              label: 'اسم المستلم',
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                        color: AppColors.primaryOrange,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'أنا المتلقي',
                      style: TextStyle(
                          fontFamily: 'Careem',
                          fontSize: 15,
                          color: AppColors.solidGrey),
                    ),
                  )
                ],
              ),
            ),
            OrderField(
              hintText: '231651465146+',
              style: FontStyles.recevierData,
              label: 'هاتف المستلم',
            ),
            OrderField(
              hintText: '5000 ',
              style: FontStyles.recevierData,
              label: 'تكلفة الطلب',
            ),
            ContinueButton(
              text: 'استمرار',
            ),
          ],
        ),
      ),
    );
  }
}
