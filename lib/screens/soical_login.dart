import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 30,bottom: 30),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/index-logo.png'),
              backgroundColor: Colors.white,
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  'Sign in With',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "It's easier to login now",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20,left: 20,top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: FlatButton(
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                      ),
                      onPressed: () {},
                      color: Colors.blue[900],
                      height:50,
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FaIcon(FontAwesomeIcons.facebook,size: 30,),
                        Text('Facebook',style: TextStyle(
                          fontSize: 20
                        ),),
                          SizedBox(),
                      ],)),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: FlatButton(
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      onPressed: () {},
                      color: Colors.cyan[400],
                      height:50,
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FaIcon(FontAwesomeIcons.twitter,size: 30,),
                          Text('Twitter',style: TextStyle(
                              fontSize: 20
                          ),),
                          SizedBox(),
                        ],)),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: FlatButton(
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      onPressed: () {},
                      color: Colors.grey[400],
                      height:50,

                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FaIcon(FontAwesomeIcons.google,size: 30,),
                          Text('Google',style: TextStyle(
                              fontSize: 20
                          ),),
                          SizedBox(),
                        ],)),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    debugPrint('I am Awesome');
                  },
                  textColor: Colors.green,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.white,
                  highlightColor: Colors.orangeAccent,
                  child: Text('Sign In Using Email'),
                ),
                Text('Or'),
                FlatButton(
                  onPressed: () {
                    debugPrint('I am Awesome');
                  },
                  textColor: Colors.green,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.white,
                  highlightColor: Colors.orangeAccent,
                  child: Text('Continue as Guest!'),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
