 // ignore_for_file: constant_identifier_names,unnecessary_const

 import 'package:flutter/material.dart';
 import './models/category.dart';
 import './models/meal.dart';

// const DUMMY_CATEGORIES = const [
//   Category(
//     id: 'c1',
//     title: 'عام جديد',
//     color: Colors.purple,
//   ),
//   Category(
//     id: 'c2',
//     title: 'بلادي',
//     color: Colors.red,
//   ),
//   Category(
//     id: 'c3',
//     title: 'المكتبة المدرسية',
//     color: Colors.orange,
//   ),
//   Category(
//     id: 'c4',
//     title: 'القناطر الخيرية',
//     color: Colors.amber,
//   ),
// ];
//
// const DUMMY_BUTTON = const [
//   Category(
//     id: 'c1',
//     title: 'شرح الدرس',
//     color: Colors.purpleAccent,
//   ),
//   Category(
//     id: 'c2',
//     title: 'فيديو الشرح',
//     color: Colors.red,
//   ),
//   Category(
//     id: 'c3',
//     title: 'اﻷختبارات',
//     color: Colors.green,
//   ),
//   Category(
//     id: 'job',
//     title: 'المهن',
//     color: Colors.blue,
//   ),
// ];


 const DUMMY_MEALS = const [
   Meal(
     id: 'https://youtu.be/roBsbJryOLs',
     categories: [
       'job',
     ],
     title: 'first class hotel',
 //    affordability: Affordability.Affordable,
 //    complexity: Complexity.Simple,
     imageUrl:
         'assets/images/library_image2.jpeg',
   ),
   Meal(
     id: 'https://youtu.be/JCDQPJXwmtQ',
     categories: [
       'job',
     ],
     title: 'second class hotel',
 //    affordability: Affordability.Affordable,
 //    complexity: Complexity.Simple,
     imageUrl:
         'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
   ),
   Meal(
     id: 'https://youtu.be/vUSC6VFPwGE',
     categories: [
       'job',
     ],
     title: 'Third class hotel',
 //    affordability: Affordability.Pricey,
 //    complexity: Complexity.Simple,
     imageUrl:
         'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
   ),
 
 ];
