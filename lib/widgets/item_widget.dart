// ignore_for_file: sized_box_for_whitespace, constant_identifier_names

import 'dart:async';

import 'package:flutter/material.dart';

import '../screens/payment.dart';

class ItemWidget extends StatefulWidget {
  final String name, img;
  final String? title;
  final int price;

  final double rate;
  static bool favorite = false;
  final bool fav;

  const ItemWidget({
    Key? key,
    required this.name,
    this.title,
    required this.img,
    required this.price,
    required this.rate,
    required this.fav,
  }) : super(key: key);

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  late bool fav = false;

  late bool adding = false;

//  void selectCategory(BuildContext context) {
//    Navigator.of(context).pushNamed(
//      CategoryMealsScreen.routeName,
//      arguments: {
//        'id': id,
//        'title': title,
//      },
//    );
//  }

  void selectMeal(BuildContext ctx) {
    Timer(
        const Duration(seconds: 2),
        () => Navigator.of(ctx).pushNamed(PaymentScreen.routeName,
            arguments: widget
                .name) /*.then((value) {
      if(value != null) removeItem(value);
      Timer(const Duration(seconds: 2),()=>Navigator.push(context, CupertinoPageRoute(builder: (_)=>const MyHomePage())));
    })*/
        );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
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
                        fav = !fav;
                        ItemWidget.favorite = !ItemWidget.favorite;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        fav
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color:
                            fav ? Colors.red : Colors.black45,
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
                      adding = !adding;
                      Scaffold.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "adding done",
                          ),
                          backgroundColor: Colors.green,
                        ),
                      );
                      selectMeal(context);
                    },
                    child: Icon(
                      adding
                          ? Icons.shopping_cart
                          : Icons.shopping_cart_outlined,
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
                    widget.img,
                    fit: widget.title == null ? BoxFit.fill : BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          widget.title == null
              ? Flexible(
                  flex: 2,
                  child: FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 10.0),
                      child: Text(
                        widget.name,
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
                        width: MediaQuery.of(context).size.width,
//                        color: Colors.white,
                        child: Column(
                          children: [
                            Text(
                              widget.name,
                              style: TextStyle(
//                                backgroundColor: Colors.white,
                                color: Theme.of(context).primaryColor,
                                fontSize: 35,
//                              fontSize: Res.of(context, Res.normal),
                              ),
                            ),
                            Text(
                              widget.title!,
//                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              '${widget.rate}/5',
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
                    '${widget.price} L.E',
                  ),
                ),
              ),
              Row(
                children: [
                  Text('${widget.rate}'),
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
    );
  }
}

List item_data1 = [
  {
    'name': 'Safir Hotel Cairo',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_1.jpg',
    'rate': 4.8,
    'price': 3700,
    'fav': false,
  },
  {
    'name': 'Sheraton Cairo Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_2.jpg',
    'rate': 4.9,
    'price': 3500,
    'fav': false,
  },
  {
    'name': 'Pyramisa Cairo Suites',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_3.jpg',
    'rate': 4.5,
    'price': 3900,
    'fav': true,
  },
  {
    'name': 'Horizon Shahrazad Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_4.jpg',
    'rate': 4.6,
    'price': 4000,
    'fav': false,
  },
  {
    'name': 'Indiana Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_5.jpg',
    'rate': 4.9,
    'price': 3100,
    'fav': false,
  },
  {
    'name': 'Holidays Express Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_6.jpg',
    'rate': 4.4,
    'price': 3700,
    'fav': false,
  },
];

List item_data2 = [
  {
    'name': 'Pyramisa Hotel Luxor',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_1.jpg',
    'rate': 3.8,
    'price': 2500,
    'fav': false,
  },
  {
    'name': 'فندق نفرتيتى',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_2.jpg',
    'rate': 3.5,
    'price': 2300,
    'fav': true,
  },
  {
    'name': 'Djorff Palace',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_3.jpg',
    'rate': 3.7,
    'price': 2300,
    'fav': true,
  },
  {
    'name': 'فندق سوزانا الأقصر',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_4.jpg',
    'rate': 3.3,
    'price': 2900,
    'fav': false,
  },
  {
    'name': 'M/S Nephtis Nile Cruise',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_5.jpg',
    'rate': 3.8,
    'price': 2000,
    'fav': true,
  },
  {
    'name': 'هيلتون الاقصر ريزورت اند سبا',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_6.jpg',
    'rate': 3.0,
    'price': 2100,
    'fav': false,
  },
  {
    'name': 'Steigenberger Resort Achti',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_7.jpg',
    'rate': 3.9,
    'price': 2000,
    'fav': false,
  },
  {
    'name': 'Sonesta St. George Hotel - Convention Center',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_8.jpg',
    'rate': 3.6,
    'price': 2800,
    'fav': true,
  },
];

List item_data3 = [
  {
    'name': 'Nile Villa Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_1.jpg',
    'rate': 2.8,
    'price': 1000,
    'fav': false,
  },
  {
    'name': 'Comfort Pyramids',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_2.jpg',
    'rate': 3.0,
    'price': 1500,
    'fav': false,
  },
  {
    'name': 'Royal Inn Residence',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_3.jpg',
    'rate': 3.0,
    'price': 500,
    'fav': false,
  },
  {
    'name': 'Victory Of Downtown Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_4.jpg',
    'rate': 3.1,
    'price': 800,
    'fav': true,
  },
  {
    'name': 'Pyramid Edge Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_5.jpg',
    'rate': 3.2,
    'price': 1500,
    'fav': false,
  },
  {
    'name': 'Atlas International Hotels',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_6.jpg',
    'rate': 3.1,
    'price': 1300,
    'fav': true,
  },
  {
    'name': 'Best View Pyramids Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_7.jpg',
    'rate': 2.8,
    'price': 1000,
    'fav': false,
  },
  {
    'name': 'Victory Of Downtown Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_8.jpg',
    'rate': 3.0,
    'price': 900,
    'fav': true,
  },
];

List item_data = [
  {
    'name': 'Safir Hotel Cairo',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_1.jpg',
    'rate': 4.8,
    'price': 3700,
    'fav': false,
  },
  {
    'name': 'Sheraton Cairo Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_2.jpg',
    'rate': 4.9,
    'price': 3500,
    'fav': false,
  },
  {
    'name': 'Pyramisa Cairo Suites',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_3.jpg',
    'rate': 4.5,
    'price': 3900,
    'fav': true,
  },
  {
    'name': 'Horizon Shahrazad Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_4.jpg',
    'rate': 4.6,
    'price': 4000,
    'fav': false,
  },
  {
    'name': 'Indiana Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_5.jpg',
    'rate': 4.9,
    'price': 3100,
    'fav': false,
  },
  {
    'name': 'Holidays Express Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_6.jpg',
    'rate': 4.4,
    'price': 3700,
    'fav': true,
  },
  {
    'name': 'Pyramisa Hotel Luxor',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_1.jpg',
    'rate': 3.8,
    'price': 2500,
    'fav': true,
  },
  {
    'name': 'فندق نفرتيتى',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_2.jpg',
    'rate': 3.5,
    'price': 2300,
    'fav': false,
  },
  {
    'name': 'Djorff Palace',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_3.jpg',
    'rate': 3.7,
    'price': 2300,
    'fav': false,
  },
  {
    'name': 'فندق سوزانا الأقصر',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_4.jpg',
    'rate': 3.3,
    'price': 2900,
    'fav': false,
  },
  {
    'name': 'M/S Nephtis Nile Cruise',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_5.jpg',
    'rate': 3.8,
    'price': 2000,
    'fav': false,
  },
  {
    'name': 'هيلتون الاقصر ريزورت اند سبا',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_6.jpg',
    'rate': 3.0,
    'price': 2100,
    'fav': false,
  },
  {
    'name': 'Steigenberger Resort Achti',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_7.jpg',
    'rate': 3.9,
    'price': 2000,
    'fav': true,
  },
  {
    'name': 'Sonesta St. George Hotel - Convention Center',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_8.jpg',
    'rate': 3.6,
    'price': 2800,
    'fav': false,
  },
  {
    'name': 'Nile Villa Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_1.jpg',
    'rate': 2.8,
    'price': 1000,
    'fav': false,
  },
  {
    'name': 'Comfort Pyramids',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_2.jpg',
    'rate': 3.0,
    'price': 1500,
    'fav': false,
  },
  {
    'name': 'Royal Inn Residence',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_3.jpg',
    'rate': 3.0,
    'price': 500,
    'fav': false,
  },
  {
    'name': 'Victory Of Downtown Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_4.jpg',
    'rate': 3.1,
    'price': 800,
    'fav': false,
  },
  {
    'name': 'Pyramid Edge Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_5.jpg',
    'rate': 3.2,
    'price': 1500,
    'fav': false,
  },
  {
    'name': 'Atlas International Hotels',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_6.jpg',
    'rate': 3.1,
    'price': 1300,
    'fav': true,
  },
  {
    'name': 'Best View Pyramids Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_7.jpg',
    'rate': 2.8,
    'price': 1000,
    'fav': false,
  },
  {
    'name': 'Victory Of Downtown Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_8.jpg',
    'rate': 3.0,
    'price': 900,
    'fav': false,
  },
];

//const List student_data = [
//  {
//    'name': '',
//    // 'title': 'discrption discrption discrption',
//    'img': 'assets/hotel1.jpeg',
//    'rate': 4.8,
//  },
//  {
//    'name': '',
//    // 'title': 'discrption discrption discrption',
//    'img': 'assets/hotel3.jpeg',
//    'rate': 4.8,
//  },
//  {
//    'name': '',
//    // 'title': 'discrption discrption discrption',
//    'img': 'assets/h1_4.jpg',
//    'rate': 4.8,
//  },
//  {
//    'name': '',
//    // 'title': 'discrption discrption discrption',
//    'img': 'assets/h1_4.jpg',
//    'rate': 4.8,
//  },
//  {
//    'name': '',
//    // 'title': 'discrption discrption discrption',
//    'img': 'assets/h1_4.jpg',
//    'rate': 4.8,
//  },
//  {
//    'name': '',
//    // 'title': 'discrption discrption discrption',
//    'img': 'assets/h1_4.jpg',
//    'rate': 4.8,
//  },
//  {
//    'name': '',
//    // 'title': 'discrption discrption discrption',
//    'img': 'assets/h1_4.jpg',
//    'rate': 4.8,
//  },
//  {
//    'name': '',
//    // 'title': 'discrption discrption discrption',
//    'img': 'assets/h1_4.jpg',
//    'rate': 4.8,
//  },
//  {
//    'name': '',
//    // 'title': 'discrption discrption discrption',
//    'img': 'assets/h1_4.jpg',
//    'rate': 4.8,
//  },
//  {
//    'name': '',
//    // 'title': 'discrption discrption discrption',
//    'img': 'assets/h1_4.jpg',
//    'rate': 4.8,
//  },
//];
