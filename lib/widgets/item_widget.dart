// ignore_for_file: sized_box_for_whitespace, constant_identifier_names

import 'package:flutter/material.dart';

class ItemWidget extends StatefulWidget {
  final String name, img;
  final String? title;
  final double rate;
//  final bool fav;

  const ItemWidget({
    Key? key,
    required this.name,
    this.title,
    required this.img,
    required this.rate,
//    required this.fav,
  }) : super(key: key);

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  late bool fav = false;
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
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        fav?Icons.favorite:Icons.favorite_border,
                        color: fav?Colors.red:Colors.black45,
                      ),
                    )),
              ),
              const Expanded(
                  child: SizedBox(
                width: 22,
              )),
              Expanded(
                child: InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.shopping_cart_outlined,
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
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '100 L.E',
                  ),
                ),
              ),
              Row(
                children: [
                  Text('${widget.rate}'),
                  const Icon(Icons.star,size: 15,)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

const List item_data1 = [
  {
    'name': 'Safir Hotel Cairo',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_1.jpg',
    'rate': 4.8,
  },
  {
    'name': 'Sheraton Cairo Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_2.jpg',
    'rate': 4.8,
  },
  {
    'name': 'Pyramisa Cairo Suites',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_3.jpg',
    'rate': 4.8,
  },
  {
    'name': 'Horizon Shahrazad Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_4.jpg',
    'rate': 4.8,
  },
  {
    'name': 'Indiana Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_5.jpg',
    'rate': 4.8,
  },
  {
    'name': 'Holidays Express Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h1_6.jpg',
    'rate': 4.8,
  },
];

const List item_data2 = [
  {
    'name': 'Pyramisa Hotel Luxor',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_1.jpg',
    'rate': 4.8,
  },
  {
    'name': 'فندق نفرتيتى',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_2.jpg',
    'rate': 4.8,
  },
  {
    'name': 'Djorff Palace',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_3.jpg',
    'rate': 4.8,
  },
  {
    'name': 'فندق سوزانا الأقصر',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_4.jpg',
    'rate': 4.8,
  },
  {
    'name': 'M/S Nephtis Nile Cruise',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_5.jpg',
    'rate': 4.8,
  },
  {
    'name': 'هيلتون الاقصر ريزورت اند سبا',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_6.jpg',
    'rate': 4.8,
  },
  {
    'name': 'Steigenberger Resort Achti',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_7.jpg',
    'rate': 4.8,
  },
  {
    'name': 'Sonesta St. George Hotel - Convention Center',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h2_8.jpg',
    'rate': 4.8,
  },
];

const List item_data3 = [
  {
    'name': 'Nile Villa Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_1.jpg',
    'rate': 4.8,
  },
  {
    'name': 'Comfort Pyramids',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_2.jpg',
    'rate': 4.8,
  },
  {
    'name': 'Royal Inn Residence',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_3.jpg',
    'rate': 4.8,
  },
  {
    'name': 'Victory Of Downtown Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_4.jpg',
    'rate': 4.8,
  },
  {
    'name': 'Pyramid Edge Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_5.jpg',
    'rate': 4.8,
  },
  {
    'name': 'Atlas International Hotels',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_6.jpg',
    'rate': 4.8,
  },
  {
    'name': 'Best View Pyramids Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_7.jpg',
    'rate': 4.8,
  },
  {
    'name': 'Victory Of Downtown Hotel',
    // 'title': 'discrption discrption discrption',
    'img': 'assets/h3_8.jpg',
    'rate': 4.8,
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
