import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/meals_item.dart';

import '../dummy_data.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routename = '/category-meals';

  // final String title;
  // final String id;

  // CategoryMealScreen(this.title,this.id);

  @override
  Widget build(BuildContext context) {
    //accepting the values from route page
    final routearg =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryTitle = routearg['title'];
    final categoryId = routearg['id'];
    final categorymeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return MealItem(
              id: categorymeals[index].id,
              title: categorymeals[index].title,
              imageurl: categorymeals[index].imageUrl,
              duration: categorymeals[index].duration,
              complexity: categorymeals[index].complexity,
              affordability: categorymeals[index].affordability);
        }),
        itemCount: categorymeals.length,
      ),
    );
  }
}
