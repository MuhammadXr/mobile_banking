import 'package:flutter/material.dart';
import 'package:mobile_banking/components/menu_button_item.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Actions",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Expanded(
                flex: 1,
                child: CustomScrollView(
                  scrollDirection: Axis.horizontal,
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate(List.of([
                        CircleButton(),
                        CircleButton(),
                        CircleButton(),
                        CircleButton(),
                        CircleButton(),
                        CircleButton(),
                        CircleButton(),
                      ])),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
