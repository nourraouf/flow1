import 'package:flow/color.dart';
import 'package:flow/constants.dart';
import 'package:flutter/material.dart';

class OrderField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextStyle style;

  const OrderField({Key key, this.label, this.hintText, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style: FontStyles.label,
          ),
          SizedBox(
            height: 0.01 * MediaQuery.of(context).size.height,
          ),
          Container(
            width: 324 / 375 * MediaQuery.of(context).size.width,
            height: 53 / 971 * MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: AppColors.primaryOrange.withOpacity(0.26),
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: hintText,
                hintStyle: style,
              ),
            ),
          )
        ],
      ),
    );
  }
}
