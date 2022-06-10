import 'package:flutter/material.dart';
import '../services/theme.dart';
import 'FavoriteScreen.dart';
import 'category_meals_screen.dart';
import 'payment.dart';
import 'student_screen.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabs_screen';

  const TabsScreen({Key? key}) : super(key: key);

//   static int routeIndex;

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  //  var currentPage = DrawerSection.
  final List<Map<String, dynamic>> _page = const [
    {
      'page': CategoryMealsScreen(),
      'title': 'Trivago',
    },
    {
      'page': FavoriteScreen(/*isEmpty: true,*/),
      'title': 'Favorite Screen',
    },
    {
      'page': StudentScreen(),
      'title': 'About Student',
    },
  ];
  int _selectPageIndex = 0;

  void _selectPage(int value) {
    setState(() {
      _selectPageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//       backgroundColor: Theme.of(context).primaryColor,
//       drawer: MainDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          _page[_selectPageIndex]['title'],
//           style: StyleTitle,
        ),
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pushNamed(PaymentScreen.routeName);
          },
          child: const Icon(
            Icons.shopping_cart,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: purpleColor,
//        color: Theme.of(context).primaryColor.withOpacity(0),
        child: _page[_selectPageIndex]['page'],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 18,
        backgroundColor: purpleColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black45,
        currentIndex: _selectPageIndex,
        onTap: _selectPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category, size: 25),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, size: 25),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 25),
            label: 'students',
          ),
        ],
      ),
    );
  }
}
