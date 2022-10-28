import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CupWorldWidget extends StatelessWidget {
  const CupWorldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Nu na Copa do Mundo da FIFA™',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Icon(MdiIcons.chevronRight),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              'Participe do NuBolão e ganhe prêmios incriveis \n#AcreditaEVAI',
            ),
          ),
        ],
      ),
    );
  }
}
