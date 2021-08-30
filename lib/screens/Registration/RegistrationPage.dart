

import 'package:eagle_eye/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../log-in/logInPage.dart';

class Resgistration extends StatefulWidget {
  const Resgistration({Key? key}) : super(key: key);

  @override
  _ResgistrationState createState() => _ResgistrationState();
}

class _ResgistrationState extends State<Resgistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.8,
              child: ClipPath(
                clipper: Triangle22(),
                child: Container(
                  color: Colors.orange[900],
                  height: 271,
                ),
              ),
            ),
            Opacity(
              opacity: 1,
              child: ClipPath(
                clipper: TriangleClipper(),
                child: Container(
                  color: Colors.blue[900],
                  height: 255,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500, left: 100),
              child: Opacity(
                opacity: 0.8,
                child: ClipPath(
                  clipper: TriangleClipper3(),
                  child: Container(
                    color: Colors.orange[900],
                    height: 355,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 495, left: 110),
              child: Opacity(
                opacity: 0.8,
                child: ClipPath(
                  clipper: TriangleClipper3(),
                  child: Container(
                    color: Colors.blue[900],
                    height: 355,
                  ),
                ),
              ),
            ),
            // Column(
            //   children: [
            //      Container(
            //        child: TextField(

            //        ),
            //      )
            //   ],
            // )
            Padding(
              padding: const EdgeInsets.only(
                top: 220,
                left: 0.2,
                right: 70,
              ),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'username',
                          labelText: "NAME",
                          labelStyle:
                              TextStyle(fontSize: 12, color: Colors.orange),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusColor: Colors.orange,
                          fillColor: Colors.orange,
                          suffixIcon: IconButton(
                            icon: Icon(Icons.accessible),
                            onPressed: () {},
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        // maxLength: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: TextField(
                        // controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: "Password",
                          labelText: "Password",
                          // errorText: _passwordError,
                          labelStyle:
                              TextStyle(fontSize: 12, color: Colors.orange),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.security),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: TextField(
                        // controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: "email",
                          labelText: "Email",
                          // errorText: _passwordError,
                          labelStyle:
                              TextStyle(fontSize: 12, color: Colors.orange),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.email),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextField(
                        // controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: "phone",
                          labelText: "Phone Number",
                          // errorText: _passwordError,
                          labelStyle:
                              TextStyle(fontSize: 12, color: Colors.orange),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.phone),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 330, left: 250),
              child: Container(
                  child: Row(
                children: [
                  FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogInPage()));
                      },
                      child: Icon(Icons.keyboard_arrow_right_sharp))
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 85, top: 150),
              child: Container(
                  child: Row(
                children: [
                  Text('Register',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40))
                ],
              )),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 628),
              child: Container(
                child: Column(
                  children: [
                    Text('NOTE !! posting irrelevant  '),
                    SizedBox(
                      height: 5,
                    ),
                    Text('information will lead to a deleted'),
                    SizedBox(
                      height: 5,
                    ),
                    Text('account after 2 reports'),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text('ENJOY YOUR STAY HERE !!',
                          style: TextStyle(
                              fontSize: 40, color: Colors.orange[200])),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class Triangle22 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 320);
    path.quadraticBezierTo(
        size.width / -2, size.height, size.width, size.height - 300);
    path.lineTo(size.width, 1);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(Triangle22 oldClipper) => false;
}

class TriangleClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(110, size.height - 820);
    path.quadraticBezierTo(
        size.width / 20, size.height, size.width, size.height - 1100);
    path.lineTo(size.width, 200);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(TriangleClipper3 oldClipper) => false;
}
