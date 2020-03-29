import 'package:flutter/material.dart';
import 'package:visit_nepal/widgets/grid_restaurants.dart';

class AllRestaurants extends StatefulWidget {
  final ThemeData themeData;
  final int isWhat;
  AllRestaurants({this.themeData, this.isWhat = 0});
  @override
  _AllRestaurantsState createState() => _AllRestaurantsState();
}

class _AllRestaurantsState extends State<AllRestaurants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            widget.isWhat == 0
                ? 'Restoran'
                : widget.isWhat == 1 ? 'Cafe' : 'Makanan',
            style: widget.themeData.textTheme.headline,
          ),
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: widget.themeData.accentColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: widget.themeData.primaryColor,
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 8.0),
          color: widget.themeData.primaryColor,
          child: Center(
            child: GridRestaurants(
              themeData: widget.themeData,
              isWhat: widget.isWhat,
            ),
          ),
        ));
  }
}
