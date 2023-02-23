import 'package:flutter/material.dart';
import 'package:mobile_banking/components/bottom_navigation.dart';
import 'package:mobile_banking/components/home_menu.dart';

import '../../components/plastic_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<BankCard> cards = List.of([
    BankCard(),
    BankCard(),
    BankCard(),
    BankCard(),
    BankCard(),
  ], growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: SizedBox(), title: Text("Mobile Banking"), centerTitle: true,),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffB5C4F5),
              Color(0xffa765fc),
            ],
          )),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  height: 48,
                  child: Row(
                    children: const [
                      Text(
                        "My Cards",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: cards.length,
                      itemBuilder: (context, index) {
                        return cards[index];
                      },
                    ),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: const [
                    MenuItem(),
                    //HomeBottomNavigation(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
