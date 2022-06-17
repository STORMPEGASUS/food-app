import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';

class filterscreen extends StatefulWidget {
  static const routename = '/filter';

  @override
  State<filterscreen> createState() => _filterscreenState();
}

class _filterscreenState extends State<filterscreen> {
  var _glutenFree = false;
  var _vegeterian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget _buildswitchlisttile(
    String title,
    String description,
    Function updatevalue,
    bool currentvalue,
  ) {
    return SwitchListTile(
      title: Text(title),
      value: currentvalue,
      subtitle: Text(description),
      onChanged: updatevalue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Filters',
        ),
      ),
      drawer: Maindrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your Meal selection',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildswitchlisttile(
                  'Gluten-Free',
                  'Only include gluten-free meals',
                  (newvalue) {
                    setState(
                      () {
                        _glutenFree = newvalue;
                      },
                    );
                  },
                  _glutenFree,
                ),
                _buildswitchlisttile(
                  'Lactose-Free',
                  'Only include lactose-free meals',
                  (newvalue) {
                    setState(
                      () {
                        _lactoseFree = newvalue;
                      },
                    );
                  },
                  _lactoseFree,
                ),
                _buildswitchlisttile(
                  'Vegeterian',
                  'Only include vegeterian meals',
                  (newvalue) {
                    setState(
                      () {
                        
                      _vegeterian = newvalue;
                      },
                    );
                  },
                  _vegeterian,
                ),
                _buildswitchlisttile(
                  'Vegan',
                  'Only include vegan meals',
                  (newvalue) {
                    setState(
                      () {
                        _vegan = newvalue;
                      },
                    );
                  },
                  _vegan,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
