import 'package:eagle_eye/roots/RouteApp.dart';
import 'package:eagle_eye/screens/Home/HomePage.dart';
import 'package:eagle_eye/screens/Items/ItemsPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatergoryPage extends StatefulWidget {
  const CatergoryPage({Key? key}) : super(key: key);

  @override
  _CatergoryPageState createState() => _CatergoryPageState();
}

class _CatergoryPageState extends State<CatergoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CATERGORIES'),
          centerTitle: true,
        ),
        backgroundColor: Colors.blue[900],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    // image: DecorationImage(image: AssetImage('assets/paris.jpg'))
                  ),
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width * 1,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                  image: AssetImage('assets/broadroad.jpg'),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 150),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Traffic status',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                FloatingActionButton(
                                    onPressed: () {
                                       Get.toNamed(RouteApp.home);
                                    },
                                    child: Icon(Icons.arrow_forward)),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 50, right: 50),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    // image: DecorationImage(image: AssetImage('assets/paris.jpg'))
                  ),
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width * 1,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                  image: AssetImage('assets/quetion1.jpg'),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 150),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Lost Items',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                FloatingActionButton(
                                    onPressed: () {
                                       Get.toNamed(RouteApp.items);
                                    },
                                    child: Icon(Icons.arrow_forward)),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}




// Container(
//             height: MediaQuery.of(context).size.height / 3,
//             width: MediaQuery.of(context).size.width * 1,
//             decoration: BoxDecoration(
//                 color: Colors.red,
//                 borderRadius: BorderRadius.all(Radius.circular(20)),
//                 image: DecorationImage(
//                   image: AssetImage('assets/broadroad.jpg'),
//                   fit: BoxFit.cover,
//                 )),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//              FloatingActionButton(onPressed: (){},
//              child: Icon(Icons.arrow_forward))
//             ],
//           )