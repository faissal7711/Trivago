// import 'package:flutter/material.dart';
// // import '../conestants.dart';
// // import '../screens/belady/belady_main_screen.dart';
// // import '../screens/contact_us_page.dart';
// // import '../screens/guidance_screen.dart';
// // import '../screens/new_year/new_year_main_screen.dart';
// // import '../screens/qanatir/qanatir_main_screen.dart';
// // import '../screens/school_library/library_main_screen.dart';
// // import '../services/theme.dart';
// // import 'package:meal_app/screens/students_body.dart';

// class MainDrawer extends StatelessWidget {
//   Widget buildListTile(BuildContext context, String text, Function function) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//       child: Container(
//         height: 70,
// //        color: purpleColor,
// //      height: MediaQuery.of(context).size.height * 0.1,
//         child: Card(
//           color: purpleColor,
//           shadowColor: Colors.tealAccent,
//           child: ListTile(
//             onTap: function,
// //          leading: Icon(
// //            iconData,
// //            size: 30.0,
// //          ),
//             title: Text(
//               text,
//               style: TextStyle(
//                 fontSize: 22.0,
//                 fontWeight: FontWeight.bold,
//                 color: KTextColor,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: Theme.of(context).accentColor.withOpacity(0),
//       child: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             children: [
//               Container(
//                 height: 120.0,
//                 width: double.infinity,
//                 alignment: Alignment.centerLeft,
//                 padding: EdgeInsets.all(20.0),
//                 color: Theme.of(context).backgroundColor.withOpacity(.6),
//                 child: Center(
//                   child: Text(
//                     'لغتي الجميلة',
//                     style: TextStyle(
//                       fontSize: 35,
//                       fontWeight: FontWeight.w900,
//                       color: KTextColor,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               buildListTile(
//                 context,
//                 'عام جديد',
//                 () {
//                   Navigator.pop(context);
//                   Navigator.of(context).pushNamed(NewYearMainScreen.routeName);
//                 },
//               ),
//               buildListTile(
//                 context,
//                 'بلادي',
//                 () {
//                   Navigator.pop(context);
//                   Navigator.of(context).pushNamed(BeladyMainScreen.routeName);
//                 },
//               ),
//               buildListTile(
//                 context,
//                 'المكتبة المدرسية',
//                 () {
//                   Navigator.pop(context);
//                   Navigator.of(context).pushNamed(LibraryMainScreen.routeName);
//                 },
//               ),
//               buildListTile(
//                 context,
//                 'القناطر الخيرية',
//                 () {
//                   Navigator.pop(context);
//                   Navigator.of(context).pushNamed(QanatirMainScreen.routeName);
//                 },
//               ),
// //            buildListTile(
// //              context,
// //              'اﻹختبارات',
// //
// //                  () {
// //                Navigator.pop(context);
// //                Navigator.of(context).pushNamed('/');
// //              },
// //            ),
//               SizedBox(height: MediaQuery.of(context).size.height * 0.15),
//               buildListTile(
//                 context,
//                 'إرشادات التطبيق',
//                 () {
//                   Navigator.pop(context);
//                   Navigator.of(context).pushNamed(GuidanceScreen.routeName);
//                 },
//               ),
//               buildListTile(
//                 context,
//                 'Devloped by',
// //            Icons.settings,
//                 () {
//                   Navigator.pop(context);
//                   Navigator.of(context).pushNamed(ContactUsScreen.routeName);
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
