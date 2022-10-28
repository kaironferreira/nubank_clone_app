// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone_app/themes/app_colors.dart';

class SecurityLifeWidget extends StatelessWidget {
  const SecurityLifeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Seguros',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'Proteção para você cuidar do que importa',
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      MdiIcons.heartOutline,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Seguro de Vida',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Conhecer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
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
                      MdiIcons.cellphone,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Seguro celular',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Conhecer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
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
