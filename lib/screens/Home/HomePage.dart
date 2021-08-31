import 'dart:io';
import 'package:eagle_eye/roots/RouteApp.dart';
import 'package:eagle_eye/screens/Catergory/CatergoryPage.dart';
import 'package:eagle_eye/screens/Home/HomeControler.dart';
import 'package:eagle_eye/screens/Map/MapPage.dart';
import 'package:eagle_eye/screens/Profile/Profile.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'EAGLE EYE ',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w900,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          elevation: 62,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
          ),
          actions: [Icon(Icons.search)],
          brightness: Brightness.dark,
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 3, color: Colors.blue.shade800),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
        ),
        floatingActionButton: FabCircularMenu(
            fabColor: Colors.blue[900],
            ringColor: Colors.blue[900],
            fabOpenIcon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            fabOpenColor: Colors.white,
            ringWidth: 60,
            ringDiameter: 250,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Get.toNamed(RouteApp.catergory);
                  }),
              IconButton(
                  icon: Icon(
                    Icons.room_sharp,
                    color: Colors.white,
                  ),
                  onPressed: () {
                   Get.toNamed(RouteApp.map);
                  }),
              IconButton(
                  icon: Icon(
                    Icons.car_rental,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("MAKE A DEMAND !!"),
                          content: SingleChildScrollView(
                            child: Container(
                              height: MediaQuery.of(context).size.height / 4,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, bottom: 15),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: '',
                                        labelText: "LOCATION",
                                        labelStyle: TextStyle(
                                            fontSize: 20, color: Colors.orange),
                                        focusColor: Colors.orange,
                                        fillColor: Colors.orange,
                                      ),
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FlatButton(
                                        color: Colors.grey.shade400,
                                        child: Text("Submit"),
                                        onPressed: () {
                                          print('submit');
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
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }),
              IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  onPressed: () {
                   Get.toNamed(RouteApp.profile);
                  }),
            ]),
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Demandcard(
                              Location: 'Nvan',
                            ),
                            Demandcard(
                              Location: 'Mvog Mbi',
                            ),
                            Demandcard(
                              Location: 'POST',
                            ),
                            Demandcard(
                              Location: 'odza',
                            ),
                            Demandcard(
                              Location: 'bonne 10',
                            ),
                            Demandcard(
                              Location: 'tropicana',
                            ),
                            Demandcard(
                              Location: 'awae',
                            ),
                            Demandcard(
                              Location: 'nvog ada',
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
                Expanded(
                    flex: 5,
                    child: Container(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 8, right: 8, top: 10),
                          child: Column(
                            children: [
                              Posts(
                                image: 'assets/paris.jpg',
                              ),
                              Posts(
                                image: 'assets/traffic1.jpg',
                              ),
                              Posts(image: 'assets/traffic2.jpg'),
                              Posts(image: 'assets/traffic3.jpg'),
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            )));
  }
}

class Posts extends StatelessWidget {
  const Posts({
    required this.image,
    Key? key,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        // image: DecorationImage(image: AssetImage('assets/paris.jpg'))
      ),
      height: MediaQuery.of(context).size.height / 2.5,
      width: MediaQuery.of(context).size.width * 1,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                ],
              ),
              Icon(Icons.thumb_up)
            ],
          )
        ],
      ),
    );
  }
}

class Demandcard extends GetWidget<HomeController> {
  const Demandcard({
    required this.Location,
    Key? key,
  }) : super(key: key);
  final Location;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.orange.shade900,
                style: BorderStyle.solid,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: [
                BoxShadow(
                    color: Colors.white, blurRadius: 1.0, spreadRadius: 1.0)
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(Location,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          controller.getImage(ImageSource.camera);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[900],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        child: Text(
                          'EXECUTE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Dialog extends StatelessWidget {
  const Dialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Container(
      child: Text('me'),
    ));
  }
}
