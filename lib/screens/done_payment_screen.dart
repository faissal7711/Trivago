// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

import '../widgets/item_widget.dart';

class DonePaymentScreen extends StatelessWidget {
//  final bool isEmpty;

  const DonePaymentScreen({Key? key /*, required this.isEmpty*/
      })
      : super(key: key);

//  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//          primary: true, centerTitle: true, title: const Text("Favorite Screen")),
      body: !ItemWidget.favorite /*isEmpty*/
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset('assets/success-24.png'),
                ),
                const Text(
                  'تم الحجز بنجاح',
                  style: TextStyle(
                    fontSize: 33,
                    color: Colors.green,
                  ),
                ),
                const Center(
                  child: Text(
                    'سوف يتم تحويلك للدفع',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.red,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    ' من خلال',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.red,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    '(api)',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.red,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    '.... البنك بعد قليل',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            )
          : GridView(
              key: GlobalKey(),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: item_data1
                  .map((item) => ItemWidget(
                        img: item['img'],
                        title: item['title'],
                        name: item['name'],
                        rate: item['rate'],
                        fav: item['fav'],
                price: item['price'],
                      ))
                  .toList(),
            ),
    );
  }
}
