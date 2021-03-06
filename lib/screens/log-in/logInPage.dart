import 'package:eagle_eye/roots/RouteApp.dart';
import 'package:eagle_eye/screens/Catergory/Catergory.dart';
import 'package:eagle_eye/screens/log-in/logIn.dart';
import 'package:eagle_eye/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Registration/RegistrationPage.dart';

class LogInPage extends GetView<LoginController> {
  bool _secureText = true;
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
                clipper: LinePathClass5(),
                child: Container(
                  color: Colors.orange[900],
                  height: 225,
                ),
              ),
            ),
            Opacity(
                opacity: 1,
                child: ClipPath(
                  clipper: LinePathClass4(),
                  child: Container(
                    color: Colors.blue[900],
                    height: 200,
                  ),
                )),

            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Container(
                  child: Text.rich(
                TextSpan(
                  text: '', // default text style
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Eagle ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        )),
                    TextSpan(
                        text: 'Eye ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                            fontSize: 30)),
                  ],
                ),
              )),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 150, left: 6),
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'see beyond!',
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 25),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280, left: 30, right: 30),
              child: Container(
                child: Form(
                  key: controller.logInFormKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          controller: controller.emailController,
                          onSaved: (email) {
                            controller.email = email!;
                          },
                          validator: (email) {
                            if (!email!.contains("@")) {
                              return "enter a valide email";
                            }
                          },
                          decoration: InputDecoration(
                            hintText: 'email',
                            labelText: "EMAIL",
                            labelStyle:
                                TextStyle(fontSize: 15, color: Colors.orange),
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 2),
                        child: TextFormField(
                          controller: controller.passwordController,
                          onSaved: (password) {
                            controller.password = password!;
                          },
                          validator: (password) {
                            if (password!.length < 5) {
                              return "please! enter a valid password. password must be greater than 5 characters";
                            }
                          },
                          decoration: InputDecoration(
                              hintText: "Password",
                              labelText: "Password",
                              // errorText: _passwordError,
                              labelStyle:
                                  TextStyle(fontSize: 15, color: Colors.orange),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              suffixIcon: IconButton(
                                icon: Icon(_secureText
                                    ? Icons.remove_red_eye
                                    : Icons.security),
                                onPressed: () {},
                              )),
                          obscureText: _secureText,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5, left: 10, right: 10, bottom: 2),
                        child: Container(
                            width: MediaQuery.of(context).size.width / 0.5,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              onPressed: () {
                                if (!controller.logInFormKey.currentState!
                                    .validate()) {
                                  return null;
                                }else{
                                  Get.toNamed(RouteApp.catergory);
                                }
                                // controller.checkLogin();
                               
                              },
                              child: Text('submit',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )),
                              //  child: const Icon(Icons.arrow_forward),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0, left: 40, right: 40, bottom: 0),
                        child: Container(
                            width: MediaQuery.of(context).size.width / 0.5,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              onPressed: () {
                                 Get.toNamed(RouteApp.registration);
                                // if (controller.password.isEmpty &&
                                //     controller.email.isEmpty) {
                                // } else {
                                //   Get.toNamed(RouteApp.registration);
                                // }
                              },
                              child: Text('Register',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )),
                              //  child: const Icon(Icons.arrow_forward),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Container(
            //   child:
            // )
            Padding(
              padding: const EdgeInsets.only(top: 240, left: 200),
              child: Container(
                child: Row(
                  children: [
                    Text.rich(
                      TextSpan(
                          text: 'LOG-',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                    ),
                    Text.rich(
                      TextSpan(
                          text: 'IN',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.orange,
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
