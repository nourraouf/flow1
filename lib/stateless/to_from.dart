import 'package:flow/color.dart';
import 'package:flow/constants.dart';
import 'package:flutter/material.dart';

class ToFrom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 10, 40, 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: <Widget>[
                Location(
                  direction: 'من',
                ),
                Location(
                  direction: 'الي',
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 114 / 375 * MediaQuery.of(context).size.width,
                height: 53 / 971 * MediaQuery.of(context).size.height,
                //padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: AppColors.primaryOrange.withOpacity(0.26),
                  borderRadius: new BorderRadius.circular(5),
                ),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'الاسكندرية',
                    hintStyle: FontStyles.hintTextStyle,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 114 / 375 * MediaQuery.of(context).size.width,
                height: 53 / 971 * MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: AppColors.primaryOrange.withOpacity(0.26),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'القاهرة',
                    hintStyle: FontStyles.hintTextStyle,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Location extends StatelessWidget {
  final String direction;

  const Location({Key key, this.direction}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 80),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.location_pin,
              color: AppColors.primaryOrange,
            ),
            Text(
              direction,
              style: FontStyles.label,
            )
          ],
        ));
  }
}
