// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone_app/themes/app_colors.dart';

class FollowWidget extends StatelessWidget {
  const FollowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ignore: prefer_const_constructors
          Text(
            'Acompanhe também',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          Container(
            margin: EdgeInsets.only(
              top: 12,
              bottom: 12,
            ),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      MdiIcons.history,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Assistente de \npagamentos',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Text(
                    'Novo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
