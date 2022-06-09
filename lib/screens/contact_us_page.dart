import 'package:flutter/material.dart';

import '../services/theme.dart';

class ContactUsScreen extends StatelessWidget {
  static const routeName = '/contact_us_screen';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: purpleColor,
//      drawer: MyDrawer(),
      appBar: new AppBar(
        primary: true,
        centerTitle: true,
        title: new Text("Our Team"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
//          Image(
//            image: AssetImage('assets/images/foo.jpg'),
//            fit: BoxFit.cover,
//            color: Colors.greenAccent,
//            colorBlendMode: BlendMode.darken,
//          ),
          ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(10.0),
            children: <Widget>[
              Card(
                child: ListTile(
                  title: Text('Eng/Abdulrhman Refaay'),
                  leading: Text('1'),
                  subtitle: Column(
                    children: [
                      Text('abdalrhmnrefaie810@gmail.com'),
                      Text('01147927673'),
                      Text('المشرف علي المشروع وله العديد من الاعمال السابقة في هذا المجال ولدية خبرة في مجال تطبيقات الهواتف الذكية '),
                    ],
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Eng/Faissal Gomaa'),
                  leading: Text('2'),
                  subtitle: Column(
//                    crossAxisAlignment: CrossAxisAlignment.center,
//                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('faissalgomaa777111@gmail.com'),
                      Text('01554300626'),
                      Text('يعمل في تطبيقات الهواتف الذكية منذ عام 2019 وله العديد من التطبيقات واﻷعمال المميزة التي تعتي رونقا في تصميمها'),
                    ],
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Eng/Mohammed Fawzy'),
                  leading: Text('3'),
                  subtitle: Column(
                    children: [
                      Text('medostar50@gmail.com '),
                      Text('01015773136'),
                      Text('يعمل في مجال تطبيقات الهواتف المحمول وايضا يعمل في مجال ال .net'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
