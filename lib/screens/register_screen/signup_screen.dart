//
////import 'package:e_commerce_foo/provider/model_hud.dart';
////import 'package:e_commerce_foo/services/auth.dart';
////import 'package:e_commerce_foo/shared/components/custom_stack.dart';
////import 'package:e_commerce_foo/shared/components/custom_text_field.dart';
//import 'package:flutter/material.dart';
////import 'package:e_commerce_foo/services/auth.dart';
////import 'package:modal_progress_hud/modal_progress_hud.dart';
//import 'package:provider/provider.dart';
//
//import '../../components/custom_stack.dart';
//import '../../components/custom_text_field.dart';
//import '../../services/auth.dart';
////import '../constants.dart';
////import 'home/home_screen.dart';
////import 'login_success/login_success_screen.dart';
////import 'package:e_commerce_foo/screens/user/profile_page.dart';
//
//// ignore: must_be_immutable
//class RegisterScreen extends StatelessWidget {
//  static String id = 'RegisterScreen';
//  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
//  late String _email, _password;
//  final _auth = Auth();
//
//  RegisterScreen({Key? key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    double heightScreen = MediaQuery.of(context).size.height;
//    return Scaffold(
////      backgroundColor: kPrimaryLightColor,
////      appBar: AppBar(
////        title: Text('E Commerce'),
////        leading: IconButton(
////          icon: Icon(Icons.menu),
////          onPressed: () {},
////        ),
////      ),
//      body: Form(
//        key: _globalKey,
//        child: ListView(
//          children: <Widget>[
//            CustomStack(
//              heightScreen: heightScreen,
////              title: 'Buy it',
//              assetImage: 'assets/icons/icons_buy.png',
//            ),
//            SizedBox(
//              height: heightScreen * 0.1,
//            ),
//
//
//            Padding(
//              padding: const EdgeInsets.symmetric(
//                horizontal: 30.0,
//              ),
//              child: TextFormField(
//                obscureText: 'hint' == 'Enter your password' ? true : false,
//                validator: (value) {
//                  if (value!.isEmpty) {
//                    return 'errVal';
//                  }
//                  return null;
//                },
//                cursorColor: Colors.white,
//                decoration: InputDecoration(
//                  hintText: 'hint',
//                  fillColor: Colors.white,
//                  prefixIcon: Icon(
//                    Icons.email,
////            color: KMainColor,
//                  ),
//                  filled: true,
////          fillColor: KSecondaryColor,
//                  enabledBorder: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(20.0),
//                    borderSide: BorderSide(color: Colors.deepOrange),
//                  ),
//                  focusedBorder: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(20.0),
//                    borderSide: BorderSide(color: Colors.white),
//                  ),
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(20.0),
//                    borderSide: BorderSide(color: Colors.deepOrange),
//                  ),
//                ),
//                onSaved: (value) {_email = value!;},
//              ),
//            ),
//
//            SizedBox(
//              height: heightScreen * 0.03,
//            ),
//
//            Padding(
//              padding: const EdgeInsets.symmetric(
//                horizontal: 30.0,
//              ),
//              child: TextFormField(
//                obscureText: 'hint' == 'Enter your password' ? true : false,
//                validator: (value) {
//                  if (value!.isEmpty) {
//                    return 'errVal';
//                  }
//                  return null;
//                },
//                cursorColor: Colors.white,
//                decoration: InputDecoration(
//                  hintText: 'hint',
//                  fillColor: Colors.white,
//                  prefixIcon: Icon(
//                    Icons.lock,
////            color: KMainColor,
//                  ),
//                  filled: true,
////          fillColor: KSecondaryColor,
//                  enabledBorder: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(20.0),
//                    borderSide: BorderSide(color: Colors.deepOrange),
//                  ),
//                  focusedBorder: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(20.0),
//                    borderSide: BorderSide(color: Colors.white),
//                  ),
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(20.0),
//                    borderSide: BorderSide(color: Colors.deepOrange),
//                  ),
//                ),
//                onSaved: (value) {_password = value!;},
//              ),
//            ),
//
////            CustomTextField(
////              onClick: (v) {},
////              hint: 'Enter your name',
////              errVal: 'name is empty',
////              icon: Icons.person,
//////              onClick: (value){
//////                _email = value;
//////              },
////            ),
////            SizedBox(
////              height: heightScreen * 0.02,
////            ),
////            CustomTextField(
////              hint: 'Enter your email',
////              errVal: 'email is empty',
////              icon: Icons.email,
////              onClick: (value) {
////                _email = value;
////              },
////            ),
//            SizedBox(
//              height: heightScreen * 0.02,
//            ),
//            CustomTextField(
//              hint: 'Enter your password',
//              errVal: 'password is empty',
//              icon: Icons.lock,
//              onClick: (value) {
//                _password = value;
//              },
//            ),
//            SizedBox(
//              height: heightScreen * 0.05,
//            ),
//            Padding(
//              padding: const EdgeInsets.symmetric(horizontal: 120.0),
//              child: Builder(
//                builder: (context) => FlatButton(
//                    shape: OutlineInputBorder(
//                      borderRadius: BorderRadius.circular(20.0),
//                    ),
//                    color: Colors.black,
//                    onPressed: () async {
////                      final modelHud =
////                      Provider.of<ModelHud>(context, listen: false);
////                      modelHud.changIsLoading(true);
//                      if (_globalKey.currentState!.validate()) {
//                        _globalKey.currentState!.save();
////                      print(_email);
////                      print(_password);
//                        try {
////                            final authResult =
//                          await _auth.signUp(_email, _password);
//
////                          modelHud.changIsLoading(false);
////                          Navigator.pushNamed(context, LoginSuccessScreen.routeName);
//                        } catch (e) {
//                          modelHud.changIsLoading(false);
//                          Scaffold.of(context).showSnackBar(
//                            SnackBar(
//                              content: Text(
//                                e.message,
//                              ),
//                            ),
//                          );
//                        }
////                      print(authResult.user.uid);
//                      }
//
//                      modelHud.changIsLoading(false);
//                    },
//                    child: Text(
//                      'Sign up',
//                      style: TextStyle(
//                        color: Colors.white,
//                        fontWeight: FontWeight.bold,
//                      ),
//                    )),
//              ),
//            ),
//            SizedBox(
//              height: heightScreen * 0.05,
//            ),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Text(
//                  'Do you have an acount ? ',
//                  style: TextStyle(
////                      color: Colors.white,
//                    fontSize: 16.0,
//                  ),
//                ),
//                GestureDetector(
//                  onTap: () {
//                    Navigator.pop(context);
//                  },
//                  child: Text(
//                    'Login',
//                    style: TextStyle(
//                      fontSize: 16.0,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//              ],
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
