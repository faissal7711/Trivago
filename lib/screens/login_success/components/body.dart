//import 'package:e_commerce_foo/e_comm_lib_ui/components/default_button.dart';
//import 'package:e_commerce_foo/e_comm_lib_ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Image.asset(
            "assets/images/success.png",
            height: MediaQuery.of(context).size.height * 0.35, //35%
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          Text(
            "Login Success",
            style: TextStyle(
//            fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
          ),
//          DefaultButton(
//            text: "Back to home",
//            press: () {
////              Navigator.pushNamed(context, HomeScreen.routeName);
//            },
//          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110.0),
            child: Builder(
              builder: (context) => FlatButton(
                  height: 55,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.lightGreen,
                  onPressed: () {
//                    Navigator.pushNamed(context, HomeScreen.routeName);
//                    _validate(context);
                  },
                  child: Text(
                    'Back to home',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
