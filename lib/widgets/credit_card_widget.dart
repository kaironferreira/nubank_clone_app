// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone_app/controllers/home_controller.dart';
import 'package:nubank_clone_app/themes/app_colors.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        // direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.start,
        runSpacing: 12,
        spacing: 12,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cartão de crédito',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(MdiIcons.chevronRight),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fatura fechada',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              GetBuilder<HomeController>(
                  init: HomeController(),
                  builder: (_controller) {
                    return Text(
                      _controller.visibleBalance
                          ? _controller.invoiceValue
                          : _controller.masked,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }),
              SizedBox(
                height: 12,
              ),
              Text(
                'Vencimento dia 03',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 4, bottom: 16, right: 10),
                    padding: EdgeInsets.fromLTRB(
                      16,
                      8,
                      16,
                      8,
                    ),
                    decoration: BoxDecoration(
                      color: pinkColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 6,
                      ),
                      child: Text(
                        'Pagar fatura',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4, bottom: 16),
                    padding: EdgeInsets.fromLTRB(
                      16,
                      8,
                      16,
                      8,
                    ),
                    decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 6,
                      ),
                      child: Text(
                        'Parcelar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
