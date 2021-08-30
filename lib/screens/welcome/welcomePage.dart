import 'package:eagle_eye/screens/log-in/logIn.dart';
import 'package:eagle_eye/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            ClipPath(
                clipper: LinePathClass2(),
                child: Container(color: Colors.orange[900]!.withOpacity(0.7))),
            ClipPath(
                clipper: LinePathClass(),
                child: Container(color: Colors.blue[900])),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70, left: 10),
                      child: Text(
                        'WELCOME !',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      'nice to see you again ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 10, right: 10),
                      child: Text('Want to know whats happening in real time ?',
                          style: TextStyle(color: Colors.grey[400])),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 40, left: 10, right: 10),
                      child: Text('CLICK BELOW TO BEGIN',
                          style: TextStyle(color: Colors.grey[400])),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 80,
                        left: 0,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 80, right: 80),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange, // background
                                onPrimary: Colors.black,
                                // foreground
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LogInPage()));
                              },
                              child: Text('LogIn'),
                            ),
                          ),

// Text(' CREATE Account')
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Positioned(
                bottom: 10,
                left: 100,
                child: Text(
                  '@copyRight flysoft',
                  textAlign: TextAlign.center,
                ))
          ],
        ),
      ),
    );
  }
}
