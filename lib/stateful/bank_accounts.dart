import 'package:flow/stateless/bank_card.dart';
import 'package:flow/stateless/continue_button.dart';
import 'package:flow/stateless/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class AllBankAccounts extends StatefulWidget {
  @override
  _AllBankAccountsState createState() => _AllBankAccountsState();
}

class _AllBankAccountsState extends State<AllBankAccounts> {
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
                height: 0.6 * MediaQuery.of(context).size.height,
                width: double.infinity,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: <Widget>[
                    BankAccountCard(
                      accountNumber: '0215629589456',
                      bankName: 'بنك أبو ظبى',
                      imagePath: 'assets/abozabi.png',
                    ),
                    BankAccountCard(
                      accountNumber: '0215629589456',
                      bankName: 'البنك الاهلى',
                      imagePath: 'assets/elAhly.png',
                    ),
                    BankAccountCard(
                      accountNumber: '0215629589456',
                      bankName: 'بنك أبو ظبى',
                      imagePath: 'assets/abozabi.png',
                    ),
                    BankAccountCard(
                      accountNumber: '0215629589456',
                      bankName: 'البنك الاهلى',
                      imagePath: 'assets/elAhly.png',
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.4 * MediaQuery.of(context).size.height,
                child: ContinueButton(
                  text: 'أضف الإيصال',
                ),
              )
            ],
          ),
        ));
  }
}
