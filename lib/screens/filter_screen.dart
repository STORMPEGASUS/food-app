import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';

class filterscreen extends StatelessWidget {
  static const routename = '/filter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Filters',
        ),
      ),
      drawer: Maindrawer(),
      body: Center(
        child: Text(
          'my filters!!',
        ),
      ),
    );
  }
}
