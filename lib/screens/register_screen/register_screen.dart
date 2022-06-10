// ignore_for_file: deprecated_member_use, must_call_super, prefer_const_constructors

import 'package:flutter/material.dart';
import '../../components/custom_stack.dart';
import '../../components/custom_text_field.dart';

// import '../../conestants.dart';
// import '../../home.dart';
// import '../../provider/model_hud.dart';
import '../../main.dart';
import '../../services/auth.dart';
import '../../services/theme.dart';
import '../Login_screen/login_screen.dart';
import '../tabs_screen.dart';
// import '../doctors_body.dart';

class RegisterScreen extends StatefulWidget {
  static String routeName = '/RegisterScreen';

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  late String _email, _password;

  final _auth = Auth();
  bool isAdmin = false;
  final adminPassword = 'Admin1234';

  @override
  void initState() {
//    Firebase.initializeApp
  }

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: purpleColor,
      body: Form(
        key: _globalKey,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            CustomStack(
              heightScreen: heightScreen,
//              title: 'لغتي الجمية',
              assetImage: 'assets/icon_login.png',
            ),
            Center(
              child: Text(
                'RegisterScreen',
                style: TextStyle(
                  // color: KTextColor,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: heightScreen * 0.05,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: TextFormField(
                obscureText: 'hint' == 'Enter your password' ? true : false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'errVal';
                  }
                  return null;
                },
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: 'hint',
                  fillColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.email,
//            color: KMainColor,
                  ),
                  filled: true,
//          fillColor: KSecondaryColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                ),
                onSaved: (value) {
                  _email = value!;
                },
              ),
            ),

            SizedBox(
              height: heightScreen * 0.03,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: TextFormField(
                obscureText: 'hint' == 'Enter your password' ? true : false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'errVal';
                  }
                  return null;
                },
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: 'hint',
                  fillColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.lock,
//            color: KMainColor,
                  ),
                  filled: true,
//          fillColor: KSecondaryColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                ),
                onSaved: (value) {
                  _password = value!;
                },
              ),
            ),

            // CustomTextField(
            //   hint: 'Enter your email',
            //   errVal: 'email is empty',
            //   icon: Icons.email,
            //   onClick: (value) {
            //     _email = value;
            //   },
            // ),
            // SizedBox(
            //   height: heightScreen * 0.03,
            // ),
            // CustomTextField(
            //   hint: 'Enter your password',
            //   errVal: 'password is empty',
            //   icon: Icons.lock,
            //   onClick: (value) {
            //     _password = value;
            //   },
            // ),
            SizedBox(
              height: heightScreen * 0.05,
            ),
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
                      _validate(context);
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: heightScreen * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Do you have an acount ? ',
                  style: TextStyle(
//                      color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
//                    Navigator.popAndPushNamed(context, LoginScreen.routeName);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _validate(BuildContext context) async {
//    final modelHud = Provider.of<ModelHud>(context, listen: false);
//    modelHud.changIsLoading(true);
    if (_globalKey.currentState!.validate()) {
      _globalKey.currentState!.save();
      if (_password == adminPassword) {
        try {
          await _auth.signUp(_email, _password).then((value) {
            print(value);
          });
//          modelHud.changIsLoading(false);
          // Navigator.pushNamed(context, DoctorsScreen.routeName);
        } catch (e) {
//          modelHud.changIsLoading(false);
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text(
                e.toString(),
              ),
            ),
          );
        }
      } else {
        try {
          await _auth.signUp(_email, _password).then((value) {});
//        modelHud.changIsLoading(false);
           Navigator.pushNamed(context, TabsScreen.routeName);
        } catch (e) {
//        modelHud.changIsLoading(false);
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text(
                e.toString(),
              ),
            ),
          );
        }
      }
    } else {
//        modelHud.changIsLoading(false);
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Somthing went wrong !",
          ),
        ),
      );
    }
//    modelHud.changIsLoading(false);
  }
}
