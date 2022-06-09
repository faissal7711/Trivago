import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';
import 'ItemsScreen1.dart';
import 'ItemsScreen2.dart';
import 'ItemsScreen3.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = 'category_meals';

  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
//  String categoryTitle;
  late List<Meal> categoryMeals;

  void removeMeal(String mealId) {
    setState(() {
      categoryMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  void didChangeDependencies() {
    // final routArg = ModalRoute.of(context).settings.arguments as String;
//    final categoryId = routArg['id'];
//    categoryTitle = routArg['title'];
categoryMeals = DUMMY_MEALS.toList();
    // categoryMeals = DUMMY_MEALS.where((meal) {
    //   // return meal.categories.contains(routArg);
    // }).toList();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: purpleColor,
//      appBar: AppBar(
//        title: const Text('فنادق'),
//      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        children: [
          InkWell(
            onTap: () {
              // print('assets/audio/${0}.ogg');
              // playMusic(pathAudio: 'assets/audio/${index + 1}.ogg');
              // VideoScreen.url = categoryMeals[index].id;

//              ItemsScreen.list=item_data1
//                  .map((item) => ItemWidget(
//                img: item['img'],
//                title: item['title'],
//                name: item['name'],
//                rate: item['rate'],
//              ))
//                  .toList();
               Navigator.of(context).pushNamed(ItemsScreen1.routeName);
            },
            child: MealItem(
              id: categoryMeals[0].id,
              imageURL: 'assets/hotel1.jpeg',
              title: categoryMeals[0].title,
            ),
          ),
          InkWell(
            onTap: () {
              // print('assets/audio/${1}.ogg');
              // playMusic(pathAudio: 'assets/audio/${index + 1}.ogg');
              // VideoScreen.url = categoryMeals[index].id;
               Navigator.of(context).pushNamed(ItemsScreen2.routeName);
            },
            child: MealItem(
              id: categoryMeals[1].id,
              imageURL: 'assets/hotel2.jpeg',
              title: categoryMeals[1].title,
            ),
          ),
          InkWell(
            onTap: () {
              // print('assets/audio/${2}.ogg');
              // playMusic(pathAudio: 'assets/audio/${index + 1}.ogg');
              // VideoScreen.url = categoryMeals[index].id;
               Navigator.of(context).pushNamed(ItemsScreen3.routeName);
            },
            child: MealItem(
              id: categoryMeals[2].id,
              imageURL: 'assets/hotel3.jpeg',
              title: categoryMeals[2].title,
            ),
          ),
        ],
      ),
    );
  }
}
//
