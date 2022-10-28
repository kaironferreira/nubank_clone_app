import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone_app/themes/app_colors.dart';

class MyCreditCard extends StatelessWidget {
  const MyCreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.fromLTRB(16, 10, 20, 10),
      decoration: BoxDecoration(
          color: greyColor,
          borderRadius: BorderRadius.circular(
            16,
          )),
      child: Row(
        children: [
          Icon(
            MdiIcons.creditCard,
            color: Colors.black,
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            'Meus cartões',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
