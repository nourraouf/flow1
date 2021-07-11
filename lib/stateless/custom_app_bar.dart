import 'package:flutter/material.dart';

import '../color.dart';
import '../constants.dart';

class OrderAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const OrderAppBar({Key key, this.title}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(70);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.arrow_forward_sharp,
            size: 30,
            color: AppColors.primaryOrange,
          ),
        )
      ],
      backgroundColor: AppColors.solidWhite,
      title: Text(
        title,
        style: FontStyles.appbarStyle,
      ),
      centerTitle: true,
    );
  }
}
