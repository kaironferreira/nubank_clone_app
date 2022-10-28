// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone_app/widgets/balance_widget.dart';
import 'package:nubank_clone_app/widgets/credit_card_widget.dart';
import 'package:nubank_clone_app/widgets/cup_world_widget.dart';
import 'package:nubank_clone_app/widgets/find_out_more_widget.dart';
import 'package:nubank_clone_app/widgets/follow_widget.dart';
import 'package:nubank_clone_app/widgets/header_widget.dart';
import 'package:nubank_clone_app/widgets/investiments_widget.dart';
import 'package:nubank_clone_app/widgets/menu_itens_widget.dart';
import 'package:nubank_clone_app/widgets/my_credit_card.dart';
import 'package:nubank_clone_app/widgets/notification_widget.dart';
import 'package:nubank_clone_app/widgets/security_life_widget.dart';
import 'package:nubank_clone_app/widgets/shopping_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: primaryColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              HeaderWidget(),
              BalanceWidget(),
              MenuItensWidget(),
              MyCreditCard(),
              NotificationWidget(),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              CreditCardWidget(),
              Divider(
                thickness: 1,
              ),
              FollowWidget(),
              Divider(
                thickness: 1,
              ),
              InvestimentsWidget(),
              Divider(
                thickness: 1,
              ),
              SecurityLifeWidget(),
              Divider(
                thickness: 1,
              ),
              ShoppingWidget(),
              Divider(
                thickness: 1,
              ),
              CupWorldWidget(),
              Divider(
                thickness: 1,
              ),
              FindOutMoreWidget(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        preferredSize: Size.fromHeight(0));
  }
}
