// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone_app/controllers/home_controller.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _accountBalance(),
            SizedBox(
              height: 12,
            ),
            _balance(),
          ]),
    );
  }

  _accountBalance() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text(
          'Conta',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          MdiIcons.chevronRight,
          size: 26,
        ),
      ],
    );
  }

  _balance() {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Text(
            controller.visibleBalance
                ? controller.balanceValue
                : controller.masked,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          );
        });
  }
}
