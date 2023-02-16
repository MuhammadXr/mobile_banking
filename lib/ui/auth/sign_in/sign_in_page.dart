import 'package:extended_phone_number_input/consts/enums.dart';
import 'package:extended_phone_number_input/phone_number_input.dart';
import 'package:flutter/material.dart';

import '../../../components/text_view.dart';
import '../../../utils/colors.dart';
import '../verify/verify_screen.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var isShow = false, isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
            body: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 70,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    width: double.infinity,
                    child: TextView(
                        text: "Sign In",
                        fontWeight: FontWeight.w700,
                        textColor: primaryColor,
                        textSize: 35,
                        textAlign: TextAlign.center),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 21)),
                const SliverToBoxAdapter(child: SizedBox(height: 62)),
                SliverToBoxAdapter(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 37),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: inputBackgroundColor),
                    child: const PhoneNumberInput(
                      initialCountry: 'Uz',
                      locale: 'en',
                      countryListMode: CountryListMode.dialog,
                      contactsPickerPosition: ContactsPickerPosition.suffix,
                      allowPickFromContacts: false,
                      hint: "123 45 67",
                    )
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 37, vertical: 5),
                    padding: const EdgeInsets.only(left: 29, right: 19),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: inputBackgroundColor),
                    child: TextField(
                      decoration: InputDecoration(
                        //   suffixIcon: Icon(Icons.remove_red_eye),
                          suffix: InkWell(
                            child: Icon(
                                isShow ? Icons.visibility_off : Icons.visibility,
                                color: lightGreyColor),
                            onTap: () {
                              isShow = !isShow;
                              setState(() {});
                            },
                          ),
                          hintText: "Password",
                          border: InputBorder.none),
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: inputTextColor,
                          fontSize: 15,
                          fontFamily: 'Dmsans'),
                      maxLines: 1,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: !isShow,
                      //bu false bo`lganda password korinadi
                      enableSuggestions: false,
                      autocorrect: false,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 28)),
                const SliverToBoxAdapter(child: SizedBox(height: 40)),
                SliverToBoxAdapter(
                  child: GestureDetector(
                    onTap: (){
                      openVerify();
                    },
                    child: Container(
                      height: 60,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 37, vertical: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), color: primaryColor),
                      child: const TextView(
                          text: "Sign up with Phone Number",
                          fontWeight: FontWeight.w700,
                          textColor: Colors.white,
                          textSize: 17,
                          textAlign: TextAlign.center),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 37, vertical: 12),
                    child: Row(
                      children: const [
                        Expanded(child: SizedBox()),
                        TextView(
                            text: "Already have an account? - ",
                            fontWeight: FontWeight.w400,
                            textColor: primaryColor,
                            textSize: 15,
                            textAlign: TextAlign.center),
                        TextView(
                            text: "Sign In",
                            fontWeight: FontWeight.w700,
                            textColor: primaryColor,
                            textSize: 15,
                            textAlign: TextAlign.center),
                        Expanded(child: SizedBox())
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 37, vertical: 12),
                    child: Row(
                      children: const [
                        Expanded(child: SizedBox()),
                        TextView(
                            text: "Do Forgot your password? - ",
                            fontWeight: FontWeight.w400,
                            textColor: primaryColor,
                            textSize: 15,
                            textAlign: TextAlign.center),
                        TextView(
                            text: "Yes",
                            fontWeight: FontWeight.w700,
                            textColor: Colors.red,
                            textSize: 15,
                            textAlign: TextAlign.center),
                        Expanded(child: SizedBox())
                      ],
                    ),
                  ),
                )
              ],
            ),
          ))
    );
  }
  void openVerify() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const VerifyScreen(),));
  }
}
