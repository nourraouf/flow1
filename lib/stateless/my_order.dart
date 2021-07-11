import 'package:flow/constants.dart';
import 'package:flutter/material.dart';
import '../color.dart';

class MyOrder extends StatelessWidget {
  final String to;
  final String from;
  final String duration;
  final double price;
  final String truckType;
  final String orderID;

  const MyOrder(
      {Key key,
      this.to,
      this.from,
      this.duration,
      this.price,
      this.truckType,
      this.orderID})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 307 / 375 * MediaQuery.of(context).size.width,
        height: 285 / 812 * MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.solidWhite,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                ' طلب رقم ' + '$orderID',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Careem',
                  fontWeight: FontWeight.bold,
                  color: AppColors.solidBlack,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Container(
                width: 274,
                height: 34,
                decoration: BoxDecoration(
                    color: AppColors.solidWhite,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: AppColors.primaryOrange,
                      width: 1,
                    )),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            Icons.location_pin,
                            color: AppColors.primaryOrange,
                          ),
                          const Text(
                            'من',
                            style: FontStyles.myOrderData,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        from,
                        style: FontStyles.myOrderData,
                      ),
                    )
                  ],
                ),
              ),
            ),
            //********************************************************************
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Container(
                width: 274,
                height: 34,
                decoration: BoxDecoration(
                    color: AppColors.solidWhite,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: AppColors.primaryOrange,
                      width: 1,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            Icons.location_pin,
                            color: AppColors.primaryOrange,
                          ),
                          const Text(
                            'الي',
                            style: FontStyles.myOrderData,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        to,
                        style: FontStyles.myOrderData,
                      ),
                    )
                  ],
                ),
              ),
            ),
            //***********************************************************00 */
            //الشاحنة
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Container(
                width: 274,
                height: 34,
                decoration: BoxDecoration(
                    color: AppColors.solidWhite,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: AppColors.primaryOrange,
                      width: 1,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            Icons.car_rental,
                            color: AppColors.primaryOrange,
                          ),
                          const Text(
                            'الشاحنة',
                            style: FontStyles.myOrderData,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        truckType,
                        style: FontStyles.myOrderData,
                      ),
                    )
                  ],
                ),
              ),
            ),
            //****************************************** */
            //الوقت
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Container(
                width: 274,
                height: 34,
                decoration: BoxDecoration(
                    color: AppColors.solidWhite,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: AppColors.primaryOrange,
                      width: 1,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            Icons.timer,
                            color: AppColors.primaryOrange,
                          ),
                          const Text(
                            'الوقت',
                            style: FontStyles.myOrderData,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        duration,
                        style: FontStyles.myOrderData,
                      ),
                    )
                  ],
                ),
              ),
            ),
            //********************************************** */
            //تكلفة الشحن
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Container(
                width: 274,
                height: 34,
                decoration: BoxDecoration(
                    color: AppColors.solidWhite,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: AppColors.primaryOrange,
                      width: 1,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            Icons.location_pin,
                            color: AppColors.primaryOrange,
                          ),
                          const Text(
                            'تكلفة الشحن',
                            style: FontStyles.myOrderData,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        price.toString(),
                        style: FontStyles.myOrderData,
                      ),
                    )
                  ],
                ),
              ),
            ),
            //******************************************* */
            //
          ],
        ),
      ),
    );
  }
}
