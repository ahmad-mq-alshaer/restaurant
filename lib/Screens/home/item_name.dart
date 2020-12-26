import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/model/photo_list.dart';

class ItemName extends StatefulWidget {
  @override
  _ItemNameState createState() => _ItemNameState();
}

class _ItemNameState extends State<ItemName> {
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
            'Item Name',
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
      body: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 3 / 8,
                child: Image.asset(
                  'assets/images/food_all.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 25.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Name',
                        style: TextStyle(
                          fontSize: 23,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: ': Any Name',
                        style: TextStyle(
                          color: const Color(0xffffffff),
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 15.0, bottom: 5.0),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 21,
                      color: const Color(0xffffffff),
                    ),
                    children: [
                      TextSpan(
                        text: 'Description',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text:
                        ': Any Desc Any Desc Any Dec \nAny Desc Any Desc Any Desc Any Desc \nAny Desc Any Desc Any Desc Any Desc \nAny Desc Any Desc Any Desc Any Desc \nAny Desc Any Desc Any Desc \n',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 20),
                child: Text(
                  'Photos',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120.0,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryData.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: <Widget>[
                      Container(
                        width: 154.0,
                        height: 120.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                categoryData[index].imageUrl,
                              )),
                        ),
                      ),
                      SizedBox(width: 15)
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
