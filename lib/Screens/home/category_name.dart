import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:restaurant/model/category_name_list.dart';

import 'item_name.dart';

class CategoriesName extends StatefulWidget {
  @override
  _CategoriesNameState createState() => _CategoriesNameState();
}

class _CategoriesNameState extends State<CategoriesName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232931),
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: Color(0xff232931),
        title: Center(
          child: Text(
            'CategoriesName',
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
                                    ItemName(),
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
                          color: const Color(0xff232323),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 130.0,
                                height: 130.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xff707070)),
                                  image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        categoryData[index].imageUrl,
                                      )),
                                ),
                              ),
                              //SizedBox(width: 25),
                              Padding(
                                padding: const EdgeInsets.only(top: 27, left: 25,bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      categoryData[index].sandwichName,
                                      style: TextStyle(
                                        fontSize: 21,
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      width: 179.0,
                                      height: 70.0,
                                      child: Text(
                                        categoryData[index].description,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: const Color(0x70ffffff),
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 100.0),
                                      child: Container(
                                        width: 72.0,
                                        height: 42.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(13.0),
                                          color: const Color(0xfff73859),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0x29d5a8a8),
                                              offset: Offset(2, 3),
                                              blurRadius: 2,
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Text(
                                            '50\$',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 20,
                                              color: const Color(0xffffffff),
                                              fontWeight: FontWeight.w700,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
