import 'package:flutter/material.dart';

import 'addpost.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final categoriesList = [
    'Filters',
    'Price',
    'Property Type',
    'Beds/Baths'
  ];
  int currentSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelect = index;
                  });
                  Future.delayed(Duration(seconds: 1), (){
                    //print("Executed after 5 seconds");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddPost()),
                    );
                  });
                },
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: currentSelect == index
                                    ? Theme.of(context).primaryColor
                                    : Colors.transparent,
                                width: 3))),
                    child: Text(
                      categoriesList[index],
                      style: TextStyle(
                          color: currentSelect == index
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).textTheme.headline1!.color,
                          fontSize: currentSelect == index ? 16 : 14,
                          fontWeight: currentSelect == index
                              ? FontWeight.bold
                              : FontWeight.bold),
                    )),
              ),
          separatorBuilder: (_, index) => SizedBox(width: 20),
          itemCount: categoriesList.length),
    );
  }
}
