import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/meal.dart';

import '../widgets/meals_item.dart';

class FavouriteScreen extends StatelessWidget {
  List<Meal> favoritemeals;
  FavouriteScreen(this.favoritemeals);

  @override
  Widget build(BuildContext context) {
    if (favoritemeals.isEmpty) {
      return Center(
        child: Container(
          child: Text('this is your favourite section'),
        ),
      );
    } 
    else {
     return ListView.builder(
        itemBuilder: ((context, index) {
          return MealItem(
              id: favoritemeals[index].id,
              title: favoritemeals[index].title,
              imageurl: favoritemeals[index].imageUrl,
              duration: favoritemeals[index].duration,
              complexity: favoritemeals[index].complexity,
              affordability: favoritemeals[index].affordability);
        }),
        itemCount: favoritemeals.length,
      );
    }
  }
}
