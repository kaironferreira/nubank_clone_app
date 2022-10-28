// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone_app/themes/app_colors.dart';

class FindOutMoreWidget extends StatelessWidget {
  const FindOutMoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              'Descubra mais',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _cardFindOutMore(
                    image: 'assets/images/portabilidade.jpg',
                    title: 'Portabilidade de salário',
                    description:
                        'Liberdade é escolher onde \nreceber seu dinheiro',
                    button: 'Conhecer'),
                _cardFindOutMore(
                    image: 'assets/images/fatura-parcelada.jpg',
                    title: 'Fatura parcelada',
                    description:
                        'Veja quando vale a pena \n parcelar a fatura do seu cartão.',
                    button: 'Saiba mais'),
                _cardFindOutMore(
                    image: 'assets/images/open.jpg',
                    title: 'Conheça o Open Finance',
                    description:
                        'É seguro e o passo a passo é \n super simples',
                    button: 'Saiba mais'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _cardFindOutMore(
      {required String image,
      required String title,
      required String description,
      required String button}) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10), topLeft: Radius.circular(10)),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: 230,
              height: 130,
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              description,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Container(
            margin: EdgeInsets.only(left: 12),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Text(
              button,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
