// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone_app/themes/app_colors.dart';

class InvestimentsWidget extends StatelessWidget {
  const InvestimentsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Investimentos',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Icon(MdiIcons.chevronRight),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              'O jeito NU de investi sem asteriscos, \n linguagem facil a partir de R\$1. Saiba mais',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
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
              children: [
                Icon(
                  MdiIcons.cash,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Consultar saldo para transferencia',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
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
