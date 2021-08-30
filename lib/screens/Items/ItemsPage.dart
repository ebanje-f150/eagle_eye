import 'dart:io';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eagle_eye/screens/Catergory/CatergoryPage.dart';
import 'package:eagle_eye/screens/Profile/ProfilePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ItemsPageNav extends StatefulWidget {
  const ItemsPageNav({Key? key}) : super(key: key);

  @override
  _ItemsPageNavState createState() => _ItemsPageNavState();
}

class _ItemsPageNavState extends State<ItemsPageNav> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.blue.shade900,
          items: <Widget>[
            Icon(
              (Icons.arrow_back),
              size: 30,
            ),
            Icon(
              (Icons.camera),
              size: 30,
            ),
            Icon(
                (Icons.person),
               ),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: (_page == 0)
            ? ItemsPage()
            : (_page == 1)
                ? _getFromCamera()
                : ProfilePage());
  }

  _getFromCamera() async{
     PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
    }
}}



class ItemsPage extends StatelessWidget {
  const ItemsPage({Key? key}) : super(key: key);
  _getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
           
            children: [
              Posts(
                Image: 'assets/key.jpg',
              ),
              Posts(
                Image: 'assets/compas1.jpg',
              ),
              Posts(
                Image: 'assets/wallet.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Posts extends StatelessWidget {
  const Posts({
    required this.Image,
    Key? key,
  }) : super(key: key);
  final String Image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        // image: DecorationImage(image: AssetImage('assets/paris.jpg'))
      ),
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width * 1,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage(Image),
                  fit: BoxFit.cover,
                )),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.comment,
                        color: Colors.white,
                      )),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.thumb_up),
                    color: Colors.white,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
