import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Icon icon;
  final String text;

  const CircleButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Card(
            elevation: 4,
            shape: const CircleBorder(),
            child: SizedBox(height: 64, width: 64, child: Center(child: icon)),
          ),
        ),
        const SizedBox(height: 4,),
        Text(
          text,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(6, 15, 39, 1)),
        )
      ],
    );
  }
}
