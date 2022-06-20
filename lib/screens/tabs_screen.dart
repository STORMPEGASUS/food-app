// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/meal.dart';
import 'package:flutter_complete_guide/screens/categories_screen.dart';
import 'package:flutter_complete_guide/screens/favourites_screen.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';

class tabscreen extends StatefulWidget {
  final List<Meal> favoritemeal;

  tabscreen(this.favoritemeal);

  @override
  State<tabscreen> createState() => _tabscreenState();
}

class _tabscreenState extends State<tabscreen> {
  List<Map<String, Object>> _pages;
  int _selectpageindex = 0;
  
  @override
  void initState() { //used for one time intialisation when stateful widget id build
   _pages = [
    {
      'title': 'Categories',
      'page': CategoriesScreen(),
    },
    {
      'title': 'Your Favourite',
      'page': FavouriteScreen(widget.favoritemeal),
    },
  ];
    super.initState();
  }

  void _selectpage(int index) {
    setState(() {
      _selectpageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pages[_selectpageindex]['title'],
        ),
      ),
      drawer: Maindrawer(),
      body: _pages[_selectpageindex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectpage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectpageindex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favourites'),
        ],
      ),
    );
  }
}
