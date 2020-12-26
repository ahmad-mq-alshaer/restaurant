import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Screens/home/categories.dart';
import 'package:restaurant/Screens/login/sign_in.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff232931),
        child: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                    accountName: Text(
                      'Name',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    accountEmail: Text(
                      'email@gmail',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    currentAccountPicture: GestureDetector(
                      onTap: () => showDialog(
                        context: context,
                        child: AlertDialog(
                          title: Text('Himdeve Fashion'),
                          content: Text(
                              'To be a designer is a kind of art work. However, to proceed further, to develop a brand and to find a marketplace for the ideas, it is sometimes a struggle. But with a firm determination, love and passion, finally, at the end, a little wish may come true… And that wish is called the Himdeve. The brand designed to be successful.'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('Close'),
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                          ],
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.black,
                          backgroundImage: AssetImage('assets/images/prof.jpg'),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/prof.jpg'),
                      ),
                    )),
                SizedBox(height: 50),
                ListTile(
                  title: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  leading: Icon(
                    Icons.category,
                    color: Colors.white,
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();

                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Categories()),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  leading: Icon(
                    Icons.category,
                    color: Colors.white,
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();

                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Categories()),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  leading: Icon(
                    Icons.category,
                    color: Colors.white,
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();

                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Categories()),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  leading: Icon(
                    Icons.category,
                    color: Colors.white,
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();

                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Categories()),
                    );
                  },
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 70.0,
                child: RaisedButton(
                  color: Color(0xfff73859),
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 29,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
