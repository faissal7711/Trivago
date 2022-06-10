// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

import '../components/custom_stack.dart';
import '../widgets/item_widget.dart';

class PaymentScreen extends StatelessWidget {
  static const routeName = '/payment_screen';

//  final bool isEmpty;

  const PaymentScreen({Key? key /*, required this.isEmpty*/})
      : super(key: key);

//  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
            primary: true,
            centerTitle: true,
            title: const Text("Payment Screen")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomStack(
              heightScreen: heightScreen*.8,
//              title: 'لغتي الجمية',
              assetImage: 'assets/debit-card.png',
            ),
//            Center(
//              child: Image.asset(
//                'assets/debit-card.png',
//                width: 66,
//                height: 55,
//              ),
//            ),
            Expanded(
              child: GridView(
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
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 60.0,),
              child: Row(
                children: [
                  Expanded(child: Text('15000',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                  Expanded(child: Text('L.E',style: TextStyle(fontSize: 25),)),
                  Builder(
                    builder: (context) => FlatButton(
                        height: 55,
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.lightGreen,
                        onPressed: () {

                        },
                        child: const Text(
                          'Payment',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
