import 'package:flutter/material.dart';
import 'package:nubank_clone_app/themes/app_colors.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _income(
            label1: 'Celular Seguro.',
            color1: primaryColor,
            label2: 'Seu celular \nprotegido, para você fazer mais.',
            color2: Colors.black,
          ),
          _income(
            label1: 'Seguro de Vida a partir de R\$4/\n mês? ',
            color1: Colors.black,
            label2: 'Conheça o Nubank Vida!',
            color2: primaryColor,
          ),
          _income(
            label1: 'Salve amigos da burocracia. ',
            color1: Colors.black,
            label2: '\nFaça um convite para o Nubank.',
            color2: primaryColor,
          ),
        ],
      ),
    );
  }

  _income(
      {required String label1,
      required Color color1,
      required String label2,
      required Color color2}) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: EdgeInsets.only(
        left: 10,
        top: 10,
        right: 10,
      ),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: label1,
              style: TextStyle(
                color: color1,
                fontSize: 14,
              ),
            ),
            TextSpan(
              text: label2,
              style: TextStyle(
                color: color2,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
