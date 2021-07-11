import 'package:flow/color.dart';
import 'package:flow/constants.dart';
import 'package:flow/stateless/add_order_field.dart';
import 'package:flow/stateless/continue_button.dart';
import 'package:flow/stateless/custom_app_bar.dart';
import 'package:flow/stateless/to_from.dart';
import 'package:flutter/material.dart';

class AddOrder extends StatefulWidget {
  @override
  _AddOrderState createState() => _AddOrderState();
}

class _AddOrderState extends State<AddOrder> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.solidWhite,
      appBar: OrderAppBar(
        title: 'أضافة طلب',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/image.png',
                      height: height * 0.098,
                      width: width * 0.286,
                    ),
                  ),
                ),
                Text('أضافة صورة', style: FontStyles.textStyle1),
              ],
            ),
            OrderField(
              label: 'نوع التحويل',
              hintText: 'نقل ثلاجة',
              style: FontStyles.label,
            ),
            OrderField(label: 'رقم الجوال', hintText: '231651465146+'),
            OrderField(label: 'نوع الحمولة', hintText: 'طعام'),
            OrderField(label: 'وزن الحمولة', hintText: '5000 kg'),
            ToFrom(),
            Container(
              padding: EdgeInsets.fromLTRB(70, 10, 25, 10),
              child: Row(
                children: <Widget>[
                  Text(
                    'المسافة',
                    style: FontStyles.label,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 138 / 375 * MediaQuery.of(context).size.width,
                    height: 42 / 971 * MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: AppColors.primaryOrange,
                      borderRadius: new BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        '220 Km',
                        textAlign: TextAlign.center,
                        style: FontStyles.distance,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 263 / 375 * MediaQuery.of(context).size.width,
              height: 50 / 971 * MediaQuery.of(context).size.height,
              child: ContinueButton(
                text: 'استمرار',
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(11)),
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.solidWhite,
                                borderRadius:
                                    BorderRadiusDirectional.circular(11)),
                            width:
                                308 / 375 * MediaQuery.of(context).size.width,
                            height:
                                282 / 971 * MediaQuery.of(context).size.height,
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.done_rounded,
                                    size: 74 /
                                        375 *
                                        MediaQuery.of(context).size.width,
                                    color: AppColors.primaryOrange),
                                Text(
                                  'تم الأنتهاء من طلبك',
                                  style: FontStyles.dialogTextStyle,
                                ),
                                Text(
                                  ' رقم الطلب 12447',
                                  style: FontStyles.dialogTextStyle,
                                ),
                                Text(
                                  'اطلب وقت 45 دقيقة',
                                  style: FontStyles.dialogTextStyle2,
                                ),
                                Text(
                                  '29 December , 2018 . 03:00 pm',
                                  style: FontStyles.dialogTextStyle2,
                                )
                              ],
                            ),
                          ),
                        );
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
