import 'package:flutter/material.dart';

import '../color.dart';
import '../constants.dart';

class ContinueButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const ContinueButton({
    Key key,
    this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 263 / 375 * MediaQuery.of(context).size.width,
        height: 50 / 971 * MediaQuery.of(context).size.height,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.primaryOrange),
          ),
          onPressed: onPressed,
          child: Center(
            child: Text(
              text,
              style: FontStyles.continuebutton,
            ),
          ),
        ),
      ),
    );
  }
}
