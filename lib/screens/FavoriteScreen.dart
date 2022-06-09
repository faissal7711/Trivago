// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  final bool isEmpty;

  const FavoriteScreen({Key? key, required this.isEmpty}) : super(key: key);

//  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//          primary: true, centerTitle: true, title: const Text("Favorite Screen")),
      body: isEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                Center(
                  child: Icon(Icons.favorite_border,size: 80,),
                ),
                Text(
                  'No Favorite found,',
                  style: TextStyle(
                    fontSize: 33,
//                    color: Colors.pink,
                  ),
                ),
                Text(
                  'can\'t see any',
                  style: TextStyle(
                    fontSize: 33,
//                    color: Colors.pink,
                  ),
                ),
              ],
            )
          : ListView(
              children:const <Widget>[
                SizedBox(
                  height: 10,
                ),
                // NotificationItem(
                //   img: 'assets/profile.png',
                //   notify: 'Kamilia Mohamed Liked your Qustion',
                //   time: '1',
                //   function: () {},
                // ),
                // NotificationItem(
                //   img: 'assets/profile.png',
                //   notify: 'Kamilia Mohamed Liked your Qustion',
                //   time: '15',
                //   function: () {},
                // ),
                // NotificationItem(
                //   img: 'assets/profile.png',
                //   notify: 'Kamilia Mohamed Liked your Qustion',
                //   time: '31',
                //   function: () {},
                // ),
              ],
            ),
    );
  }
}
