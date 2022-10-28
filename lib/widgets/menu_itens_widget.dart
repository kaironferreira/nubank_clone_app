// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone_app/themes/app_colors.dart';

class MenuItensWidget extends StatelessWidget {
  const MenuItensWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            _itemMenu(icon: MdiIcons.clover, label: 'Area Pix', isfirst: true),
            _itemMenu(icon: MdiIcons.barcode, label: 'Pagar'),
            _itemMenu(icon: MdiIcons.trayArrowUp, label: 'Transferir'),
            _itemMenu(icon: MdiIcons.trayArrowDown, label: 'Depositar'),
            _itemMenu(icon: MdiIcons.cellphone, label: 'Recarga de Celular'),
            _itemMenu(icon: MdiIcons.currencyUsd, label: 'Cobrar'),
            _itemMenu(icon: MdiIcons.heartOutline, label: 'Doação'),
            _itemMenu(
                icon: MdiIcons.earthArrowRight, label: 'Tranferir Internac.'),
            _itemMenu(icon: MdiIcons.signal, label: 'Investir'),
          ],
        ),
      ),
    );
  }

  _itemMenu({required IconData icon, required String label, bool? isfirst}) {
    return Container(
      width: 90,
      padding: (isfirst ?? false)
          ? EdgeInsets.only(right: 5, left: 20)
          : EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(
                (48),
              ),
            ),
            child: Icon(icon),
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
