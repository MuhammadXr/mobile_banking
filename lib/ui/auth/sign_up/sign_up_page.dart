import 'package:flutter/material.dart';
import 'package:mobile_banking/components/text_view.dart';
import 'package:mobile_banking/utils/colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var isShow = false, isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  text: "Welcome!",
                  fontWeight: FontWeight.w700,
                  textColor: primaryColor,
                  textSize: 35,
                  textAlign: TextAlign.center),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 21)),
          const SliverToBoxAdapter(
            child: SizedBox(
              width: double.infinity,
              child: TextView(
                  text: "Please provide following\ndetails for your new account",
                  fontWeight: FontWeight.w400,
                  textColor: primaryColor,
                  textSize: 15,
                  textAlign: TextAlign.center),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 62)),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 37),
              padding: const EdgeInsets.symmetric(horizontal: 29),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: inputBackgroundColor),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Full name", border: InputBorder.none),
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: inputTextColor,
                    fontSize: 15,
                    fontFamily: 'Dmsans'),
                maxLines: 1,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 37, vertical: 5),
              padding: const EdgeInsets.symmetric(horizontal: 29),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: inputBackgroundColor),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Email Address", border: InputBorder.none),
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: inputTextColor,
                    fontSize: 15,
                    fontFamily: 'Dmsans'),
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
              ),
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
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Row(
                children: [
                  Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        isChecked = !isChecked;
                        setState(() {});
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      activeColor: secondaryColor),
                  const TextView(
                      text:
                          "By creating your account you have to agree\nwith our Teams and Conditions.",
                      fontWeight: FontWeight.w400,
                      textColor: primaryColor,
                      textSize: 13,
                      textAlign: TextAlign.left)
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(
            child: Container(
              height: 60,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 37, vertical: 7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: primaryColor),
              child: const TextView(
                  text: "Sign in my Account",
                  fontWeight: FontWeight.w700,
                  textColor: Colors.white,
                  textSize: 17,
                  textAlign: TextAlign.center),
            ),
          ),
          SliverToBoxAdapter(
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
          )
        ],
      ),
    ));
  }
}
