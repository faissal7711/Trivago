// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors, file_names

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/custom_stack.dart';
import '../widgets/item_widget.dart';
import 'done_payment_screen.dart';

class PaymentScreen extends StatefulWidget {
  static const routeName = '/payment_screen';

//  final bool isEmpty;

  const PaymentScreen({Key? key /*, required this.isEmpty*/
      })
      : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 1)
        _counter--;
      else
        Scaffold.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              "Number days can\'t less than 1",
            ),
            backgroundColor: Colors.red,
          ),
        );
    });
  }

//  var date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final itemName = ModalRoute.of(context)!.settings.arguments as String;
    final selectedItem =
        item_data.firstWhere((item) => item['name'] == itemName);
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
            primary: true,
            centerTitle: true,
            title: const Text("Payment Screen")),
        body: itemName != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomStack(
                    heightScreen: heightScreen * .8,
//              title: 'لغتي الجمية',
                    assetImage: 'assets/debit-card.png',
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(0.0),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      decoration: BoxDecoration(
                          color: Theme.of(context).canvasColor,
                          borderRadius: BorderRadius.circular(8.0),
                          //border: Border.all(color: RegularTheme.blueGray),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            const BoxShadow(
                                /*color: RegularTheme.blueGray,*/
                                blurRadius: 0.5,
                                spreadRadius: 0.5)
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                    onTap: () {
                                      setState(() {
//    fav = !fav;
                                        ItemWidget.favorite =
                                            !ItemWidget.favorite;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        ItemWidget.favorite
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: ItemWidget.favorite
                                            ? Colors.red
                                            : Colors.black45,
                                      ),
                                    )),
                              ),
                              const Expanded(
                                  child: SizedBox(
                                width: 22,
                              )),
                              Expanded(
                                child: InkWell(
                                    onTap: () {
//    adding = !adding;
                                      Scaffold.of(context).showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                            "can\'nt adding this item again",
                                          ),
                                          backgroundColor: Colors.green,
                                        ),
                                      );
//    selectMeal(context);
                                    },
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: Colors.black45,
                                    )),
                              ),
                            ],
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
//                color: RegularTheme.lightGrey,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 5.0,
                                    vertical: 1.0,
                                  ), // 5.0
                                  child: Image.asset(
                                    selectedItem['img'],
//    fit: widget.title == null ? BoxFit.fill : BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          selectedItem['title'] == null
                              ? Flexible(
                                  flex: 2,
                                  child: FittedBox(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0,
                                          right: 10.0,
                                          bottom: 10.0),
                                      child: Text(
                                        selectedItem['name'],
                                        style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontSize: 22,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Flexible(
                                  flex: 2,
                                  child: FittedBox(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10.0, bottom: 6.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
//                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Text(
                                              selectedItem['name'],
                                              style: TextStyle(
//                                backgroundColor: Colors.white,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontSize: 35,
//                              fontSize: Res.of(context, Res.normal),
                                              ),
                                            ),
                                            Text(
                                              selectedItem['title'],
//                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 25,
                                              ),
                                            ),
                                            Text(
                                              '${selectedItem['rate']}/5',
//                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '${selectedItem['price']} L.E',
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text('${selectedItem['rate']}'),
                                  const Icon(
                                    Icons.star,
                                    size: 15,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 40.0,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          'Number days',
                          style: TextStyle(fontSize: 20),
                        )),
                        IconButton(
                            onPressed: _decrementCounter,
                            icon: Icon(Icons.minimize)),
                        Text(
                          '$_counter',
                          style: TextStyle(fontSize: 20),
                        ),
                        IconButton(
                            onPressed: _incrementCounter,
                            icon: Icon(Icons.add)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 30.0,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          '${_counter * selectedItem['price']}',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )),
                        Expanded(
                            child: Text(
                          'L.E',
                          style: TextStyle(fontSize: 20),
                        )),
                        FlatButton(
                            height: 55,
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            color: Colors.lightGreen,
                            onPressed: () {
    Timer(const Duration(seconds: 2),()=>Navigator.push(context, CupertinoPageRoute(builder: (_)=>const DonePaymentScreen())));
    },
                            child: const Text(
                              'Payment',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              )
            : CircularProgressIndicator());
  }
}
