import 'package:flutter/material.dart';
import '../widgets/top_circle.dart';
class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                child: CustomPaint(
                  painter: CirclePainter(),
                )
            ),
            Container(
                padding: EdgeInsets.only(top: 50,left: 15),
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Text('Hello,',style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),),
                    Text('Sign Up!',style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                )
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
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
                      labelText: 'Email OR Phone',

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
                        labelText: 'Password'
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
                        labelText: 'Confirm Password'
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Already have an account?'),
                FlatButton(onPressed: (){}, child: Text('Sign In!'),textColor: Colors.green,)
              ],
            ),
            Container(
              padding: EdgeInsets.only(bottom: 5),
              width: 300,
              height: 70,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Text('Sign Up', style: TextStyle(fontSize: 20.0),),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
        )
    );;
  }
}
