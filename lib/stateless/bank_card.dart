import 'package:flow/color.dart';
import 'package:flow/constants.dart';
import 'package:flutter/material.dart';

class BankAccountCard extends StatelessWidget {
  final String imagePath;
  final String bankName;
  final String accountNumber;

  const BankAccountCard(
      {Key key, this.imagePath, this.bankName, this.accountNumber})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 163 / 375 * MediaQuery.of(context).size.width,
        height: 189 / 971 * MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: AppColors.solidWhite,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ]),
        child: Column(
          children: <Widget>[
            Container(
              width: 125,
              height: 125,
              child: Image.asset(imagePath),
            ),
            Text(
              bankName,
              style: FontStyles.bankAccountData,
            ),
            Text(
              accountNumber,
              style: FontStyles.bankAccountData,
            ),
          ],
        ),
      ),
    );
  }
}
