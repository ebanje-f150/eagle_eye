import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);



  @override
  _ProfilePageState createState() => _ProfilePageState();
}
  
class _ProfilePageState extends State<ProfilePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        title: Text('PROFILE'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back)),
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 2, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 50),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('assets/me.jpg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 100, left: 70),
                          child: IconButton(
                            onPressed: () {
                              print('add pic');
                            },
                            icon: Icon(Icons.edit),
                            iconSize: 30,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                height: 20,
                thickness: 5,
                color: Colors.blue.shade900,
              ),
              Text(
                'NAME',
                style: TextStyle(color: Colors.white, letterSpacing: 2.0),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'EBANJE',
                    style: TextStyle(
                        color: Colors.blue, fontSize: 20, letterSpacing: 2.0),
                  ),
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              title: Text("Change Your Name"),
                              content: Container(
                                height: MediaQuery.of(context).size.height / 4,
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    child: Column(
                                      children: [
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: '',
                                            labelText: "New Name",
                                            labelStyle: TextStyle(
                                                fontSize: 15,
                                                color: Colors.orange),
                                            focusColor: Colors.orange,
                                            fillColor: Colors.orange,
                                          ),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            FlatButton(
                                              color: Colors.grey.shade400,
                                              child: Text("Submit"),
                                              onPressed: () {},
                                            ),
                                            FlatButton(
                                              color: Colors.grey.shade400,
                                              child: Text("Close"),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ));
                        },
                      );
                    },
                    icon: Icon(Icons.edit),
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'PASSWORD',
                style: TextStyle(color: Colors.white, letterSpacing: 2.0),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'WILSON22',
                    style: TextStyle(
                        color: Colors.blue, fontSize: 20, letterSpacing: 2.0),
                  ),
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(" change password"),
                            contentPadding: EdgeInsets.only(left: 5, right: 5),
                            content: Container(
                              height: MediaQuery.of(context).size.height / 1.8,
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 10),
                                      TextField(
                                        decoration: InputDecoration(
                                          hintText: '',
                                          labelText: "old password",
                                          labelStyle: TextStyle(
                                              fontSize: 15,
                                              color: Colors.orange),
                                          focusColor: Colors.orange,
                                          fillColor: Colors.orange,
                                        ),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                       
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          hintText: '',
                                          labelText: "New password",
                                          labelStyle: TextStyle(
                                              fontSize: 15,
                                              color: Colors.orange),
                                          focusColor: Colors.orange,
                                          fillColor: Colors.orange,
                                        ),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          hintText: '',
                                          labelText: "Confirm password",
                                          labelStyle: TextStyle(
                                              fontSize: 15,
                                              color: Colors.orange),
                                          focusColor: Colors.orange,
                                          fillColor: Colors.orange,
                                        ),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                       
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          FlatButton(
                                            color: Colors.grey.shade400,
                                            child: Text(
                                              "Submit",
                                            ),
                                            onPressed: () {
                                              print('this is submit');
                                            },
                                          ),
                                          FlatButton(
                                            color: Colors.grey.shade400,
                                            child: Text("Close"),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.edit),
                    color: Colors.white,
                  )
                ],
              ),

              SizedBox(
                height: 10,
              ),
              Row(children: [
                Icon(Icons.email, color: Colors.white),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'ebanjewilson2@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 10,
                  ),
                ),
              ]),

              //          Divider(
              // height: 20,
              // thickness: 10,
              // color: Colors.orange.shade900,
              //       ),
            ],
          ),
        ),
      ),
    );
  }
}
