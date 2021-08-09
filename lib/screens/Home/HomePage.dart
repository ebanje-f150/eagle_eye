import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          leading: IconButton( onPressed: (){}, icon: Icon(Icons.account_circle ),),
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
                    print('Home');
                  }),
              IconButton(
                  icon: Icon(
                    Icons.room_sharp ,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print('Favorite');
                  }),
              IconButton(
                  icon: Icon(
                    Icons.car_rental,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print('Home');
                  }),
              IconButton(
                  icon: Icon(
                    Icons.self_improvement,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print('Favorite');
                  })
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
                            Demandcard(),
                            Demandcard(),
                            Demandcard(),
                            Demandcard(),
                            Demandcard(),
                            Demandcard(),
                            Demandcard(),
                            Demandcard(),
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
                          padding: const EdgeInsets.only(
                              left: 8, right: 8, top:10),
                          child: Column(

                            children: [
                              Posts(),
                              Posts(),
                              Posts(),
                               Posts(),
                              Posts(),
                              Posts(), 
                                Posts(),
                              Posts(),
                              Posts(),
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
    Key? key,
  }) : super(key: key);

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
                  image: AssetImage('assets/paris.jpg'),
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

class Demandcard extends StatelessWidget {
  const Demandcard({
    Key? key,
  }) : super(key: key);

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
                  Text('LOCATION !!!!!'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.orange[900],
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                          child: Text('EXECUTE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              )))
                    ],
                  )
                ],
              ),
            )),
      ],
    );
  }
}
