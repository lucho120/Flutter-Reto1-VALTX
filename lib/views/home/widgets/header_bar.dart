import 'package:flutter/material.dart';
import 'package:app_reto1_valtx/theme/colors_general.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 70.0, right: 10.0),
      child: const ListTile(
        title: Text(
          'Hello,',
          style: TextStyle(
              fontSize: 20.0, color: primaryColor, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          'Mr. Floyd Miles',
          style: TextStyle(
              fontSize: 20.0, color: primaryColor, fontWeight: FontWeight.w700),
        ),
        trailing: Icon(
          Icons.search,
          color: primaryColor,
          size: 30.0,
        ),
      ),
    );
  }
}
