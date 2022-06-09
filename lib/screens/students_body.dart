// import 'package:flutter/material.dart';

// import '../services/theme.dart';
// import '../widgets/person_widget.dart';

// class StudentsScreen extends StatelessWidget {
//   static const routeName = '/students_screen';
  
//   const StudentsScreen({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: purpleColor,
// //      appBar: AppBar(
// //        centerTitle: true,
// //        title: Text('معلومات عن الطلاب'),
// //      ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
//               child: GridView(
//                 key: GlobalKey(),
//                 physics: BouncingScrollPhysics(),
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//                 children: students_data.map((student) => PersonWidget(
//                   img: student['img'],
//                   title: student['title'],
//                   name: student['name'],
//                 )).toList(),
//               ),
//             ),
//           ),
// //        _developerInfo(context),
//         ],
//       ),
//     );
//   }

// //  Widget _developerInfo(BuildContext context){
// //    return Column(
// //      crossAxisAlignment: CrossAxisAlignment.center,
// //      children: [
// //        Divider(color: RegularTheme.blueGray,height: 0.0),
// //        Text(
// //          TextValue.DEVELOPED_BY,
// //          style: TextStyle(
// //            fontWeight: FontWeight.bold,
// //            fontSize: Res.of(context, Res.normal),
// //            color: RegularTheme.blueGray,
// //            height: 1.5
// //          ),
// //        ),
// //        Text(
// //          TextValue.DEVELOPER_NAME,
// //          style: TextStyle(
// //              fontSize: Res.of(context, Res.normal),
// //              color: RegularTheme.blueGray
// //          ),
// //        )
// //      ],
// //    );
// //  }
// }
