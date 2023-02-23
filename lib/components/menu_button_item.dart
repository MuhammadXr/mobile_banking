import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      child: Center(
        child: ClipOval(
          child: Card(
            elevation: 4,
            shape: const CircleBorder(),
            child: Container(
              height: 90,
              width: 90,
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.message),
                  Text("Send")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
