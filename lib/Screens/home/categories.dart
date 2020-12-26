import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:restaurant/model/categories_list.dart';
import 'package:restaurant/model/drawer.dart';

import 'category_name.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232931),
      drawer: NavDrawer(),
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: Color(0xff232931),
        title: Center(
          child: Text(
            'Categories',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          padding: const EdgeInsets.all(10.0),
          scrollDirection: Axis.vertical,
          itemCount: categoryData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      switch (index) {
                        case 0:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    CategoriesName(),
                              ));
                          break;
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1 / 4,
                        decoration: BoxDecoration(
//                          borderRadius: BorderRadius.circular(10.0),
//                          border: Border.all(style: BorderStyle.solid,color: Colors.white),
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(
                                  Colors.black.withOpacity(0.2),
                                  BlendMode.darken),
                              image: AssetImage(
                                categoryData[index].imageUrl,
                              )),
                        ),
                        child: Center(
                          child: Text(
                            categoryData[index].name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
