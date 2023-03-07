import 'package:flutter/material.dart';
import 'package:mobile_banking/utils/colors.dart';
import 'package:mobile_banking/utils/const.dart';

import '../../components/bottom_nav_item.dart';
import '../../components/menu_button_item.dart';
import '../../components/plastic_card.dart';
import '../../components/transaction_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const id = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    var _selectedMenuIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainBackgroundColor,
        // appBar: AppBar(leading: SizedBox(), title: Text("Mobile Banking"), centerTitle: true,),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(16),
                width: double.infinity,
                height: 48,
                child: Row(
                  children: const [
                    Text(
                      "My accounts",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Icon(Icons.notifications_none),
                    SizedBox(width: 3)
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return BankCard(themeIndex: index % 2);
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 8, right: 8),
              child: SizedBox(
                  height: 90,
                  width: double.infinity,
                  child: Row(
                    children: const [
                      Expanded(
                          flex: 1,
                          child: CircleButton(
                              icon: Icon(
                                Icons.credit_card,
                                color: Color.fromRGBO(6, 15, 39, 1),
                              ),
                              text: "Add Card")),
                      Expanded(
                          flex: 1,
                          child: CircleButton(
                              icon: Icon(Icons.list_alt_sharp,
                                  color: Color.fromRGBO(6, 15, 39, 1)),
                              text: "Pay")),
                      Expanded(
                          flex: 1,
                          child: CircleButton(
                              icon: Icon(Icons.send,
                                  color: Color.fromRGBO(6, 15, 39, 1)),
                              text: "Send")),
                      Expanded(
                          flex: 1,
                          child: CircleButton(
                              icon: Icon(Icons.add_box_outlined,
                                  color: Color.fromRGBO(6, 15, 39, 1)),
                              text: "More")),
                    ],
                  )),
            )),
            const SliverToBoxAdapter(
                child: SizedBox(
              height: 40,
            )),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32),
                        topLeft: Radius.circular(32))),
                child: Column(children: [
                  Container(
                    height: 5,
                    width: 50,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(178, 183, 199, 1)),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: const [
                      Text(
                        'Recent Transactions',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: darkPrimaryColor),
                      ),
                      Spacer(flex: 1),
                      Icon(
                        Icons.search,
                        color: darkPrimaryColor,
                      ),
                      SizedBox(width: 3)
                    ],
                  ),
                  const SizedBox(height: 24),
                  const TransactionItem(
                      imageUrl: demoTransactionImage,
                      titleTransaction: 'Netflix',
                      typeTransaction: 'Entertainment',
                      priceTransaction: '-\$10'),
                  const SizedBox(height: 16),
                  const TransactionItem(
                      imageUrl: 'https://images.squarespace-cdn.com/content/v1/58b42d58ebbd1abb371381c3/1490796679735-OEWZNZE7AWUFYTJA55II/grey-4x5.png',
                      titleTransaction: 'Maria Charles',
                      typeTransaction: 'Card Transfer',
                      priceTransaction: '+\$100'),
                  const SizedBox(height: 16),
                  const TransactionItem(
                      imageUrl: 'https://s3.amazonaws.com/www-inside-design/uploads/2018/04/walmart-square.jpg',
                      titleTransaction: 'Walmart',
                      typeTransaction: 'Groceries and supermarkets',
                      priceTransaction: '-\$50')
                ]),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: cardColor1,
          unselectedItemColor: greyTextColor,
          onTap: (value) {

            setState(() { _selectedMenuIndex = value;});},
          currentIndex: _selectedMenuIndex,
          items: [
            getBottomNavItem(const Icon(Icons.wallet_rounded,color: greyTextColor,), const Icon(Icons.wallet_rounded,color: cardColor1,), 'Account'),
            getBottomNavItem(const Icon(Icons.bar_chart,color: greyTextColor,), const Icon(Icons.bar_chart,color: cardColor1,), 'Statistics'),
            getBottomNavItem(const Icon(Icons.card_giftcard,color: greyTextColor,), const Icon(Icons.card_giftcard,color: cardColor1,), 'Cashback'),
            getBottomNavItem(const Icon(Icons.settings,color: greyTextColor,), const Icon(Icons.settings,color: cardColor1,), 'Settings'),
          ],
        ),
      ),
    );
  }
}
