
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
class TransactionItem extends StatelessWidget {
  final String imageUrl;
  final String titleTransaction;
  final String typeTransaction;
  final String priceTransaction;
  const TransactionItem({Key? key, required this.imageUrl, required this.titleTransaction, required this.typeTransaction, required this.priceTransaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Container(
                height: 40,
                width: 40,
                decoration:const BoxDecoration(shape: BoxShape.circle),
                child: Image.network(
                    fit: BoxFit.fill,
                    imageUrl)),
          ),
          const SizedBox(width: 16,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleTransaction,
                maxLines: 1,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: darkPrimaryColor),
              ),
              Text(
                typeTransaction,
                maxLines: 1,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: greyTextColor),
              )],),
          const Spacer(flex: 1,),
           Text(
            textAlign: TextAlign.center,
            priceTransaction,
            maxLines: 1,
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: darkPrimaryColor),
          )
        ]
    );
  }
}
