import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Screens/home/categories.dart';
import 'package:restaurant/Screens/login/sign_up.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String fullName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.colorBurn),
                  image: AssetImage(
                    'assets/images/food_all.jpg',
                  )),
            ),
            child: Padding(
              padding: const EdgeInsets.all(90.0),
              child: Text(
                'EatNow',
                style: TextStyle(
                  fontFamily: 'Vivaldi',
                  fontSize: 55,
                  color: const Color(0xffffffff),
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            top: 240,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.white,
                    style: TextStyle(
                        color: Color(0xa8ffffff),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          bottom: 10.0, left: 10.0, right: 10.0),
                      counterStyle:
                          TextStyle(color: Colors.white, fontSize: 14),
                      focusColor: Colors.white,
                      labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                      labelText: 'Email',
                    ),
                    onChanged: (text) {
                      setState(() {
                        fullName = text;
                      });
                    },
                  ),
                  SizedBox(height: 25),
                  TextFormField(
                    controller: passwordController,
                    cursorColor: Colors.white,
                    style: TextStyle(
                        color: Color(0xa8ffffff),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          bottom: 10.0, left: 10.0, right: 10.0),
                      counterStyle: TextStyle(color: Colors.white),
                      focusColor: Colors.white,
                      labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                      labelText: 'Password',
                    ),
                    onChanged: (text) {
                      setState(() {
                        fullName = text;
                      });
                    },
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: RaisedButton(
                      padding: EdgeInsets.all(18.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(16.0),
                      ),
                      color: Color(0xfff73859),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Categories()),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 15.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Don\'t have an account ? please ',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: const Color(0xffededed),
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xffededed),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SignUp()));
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
