// ignore_for_file: sized_box_for_whitespace, constant_identifier_names

import 'package:flutter/material.dart';

class PersonWidget extends StatelessWidget {
  final String name, img;
  final String? title;

  final double rate;

  const PersonWidget({
    Key? key,
    required this.name,
    this.title,
    required this.img,
    required this.rate,
  }) : super(key: key);

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
                    img,
                    fit: title == null ? BoxFit.fill : BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          title == null
              ? Flexible(
                  flex: 2,
                  child: FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 10.0),
                      child: Text(
                        name,
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
                              name,
                              style: TextStyle(
//                                backgroundColor: Colors.white,
                                color: Theme.of(context).primaryColor,
                                fontSize: 35,
//                              fontSize: Res.of(context, Res.normal),
                              ),
                            ),
                            Text(
                              title!,
//                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 25,
                              ),
                            ),
//                            Text(
//                              '',
////                              maxLines: 2,
//                              overflow: TextOverflow.ellipsis,
//                              style: const TextStyle(
//                                color: Colors.blueGrey,
//                                fontSize: 25,
//                                fontWeight: FontWeight.bold,
//                              ),
//                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

const List student_data = [
  {
    'name': 'Mark Danial gerges',
    'title': '20182307',
    'img': 'assets/profile_icon.png',
    'rate': 4.8,
  },
  {
    'name': 'Kareem Mahmoud Mohamed',
    'title': '20182381',
    'img': 'assets/profile_icon.png',
    'rate': 4.8,
  },
  {
    'name': 'Mahmoud Hassan Messed',
    'title': '20182389',
    'img': 'assets/profile_icon.png',
    'rate': 4.8,
  },
  {
    'name': 'Mina Magdy Anwr',
    'title': '20182313',
    'img': 'assets/profile_icon.png',
    'rate': 4.8,
  },
  {
    'name': 'Mohamed Salah Ahmed',
    'title': '20172020',
    'img': 'assets/profile_icon.png',
    'rate': 4.8,
  },
  {
    'name': 'Mohamed Abdullah Mahmoud',
    'title': '20122628',
    'img': 'assets/profile_icon.png',
    'rate': 4.8,
  },
  {
    'name': 'Amr hassan Mahmoud',
    'title': '20180557',
    'img': 'assets/profile_icon.png',
    'rate': 4.8,
  },
];
