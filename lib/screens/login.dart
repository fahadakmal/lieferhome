import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/top_circle.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(

        children: <Widget>[
          Container(
              width: double.infinity,
              child: CustomPaint(
                painter: CirclePainter(),
              )
          ),
          Container(
            padding: EdgeInsets.only(top: 50,left: 30),
              alignment: Alignment.topLeft,
              child: Column(
                children: <Widget>[
                  Text('Welcome Back,',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                  Text('Sign In!',style: TextStyle(
                      color: Colors.white,
                    fontSize: 40,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              )
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 50,bottom: 15),
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/index-logo.png'),
              backgroundColor: Colors.white,
            ),
          ),
          Container(
            height: 250,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
            TextField(
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.mail,color: Colors.green,),
                ),
                border: OutlineInputBorder(
                borderSide: BorderSide(
                color: Colors.red,
                width: 5.0),
                  borderRadius: BorderRadius.circular(10),
          ),
               labelText: 'USER NAME',

            ),
          ),
                TextField(

                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.lock,color: Colors.green, ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 5.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'PASSWORD'
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    children: <Widget>[
                      FlatButton(onPressed: (){}, child: Text('Forget Password?')),
                      FlatButton(onPressed: (){}, child: Text('Sign In With')),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Dont have an acount?'),
              FlatButton(onPressed: (){}, child: Text('Sign Up'),textColor: Colors.green,)
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 300,
            height: 70,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text('Sign In', style: TextStyle(fontSize: 20.0),),
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {},
            ),
          ),
        ],
      )
    );
  }
}
