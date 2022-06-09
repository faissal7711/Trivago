import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String imageURL;
  final String title;

  const MealItem({
    required this.id,
    required this.imageURL,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(44.0)),
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(33.0),
              topRight: Radius.circular(15.0),
            ),
            child: Container(
              height: 170.0,
              child: Image.asset(
                imageURL,
                height: 180.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(title,
                style:
                    TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
          ),
        ],
      ),
    );
  }
}
