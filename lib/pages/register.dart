// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropshop/services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:dropshop/components/mytextfield.dart';
import 'package:dropshop/components/tilebox.dart';
import 'package:dropshop/components/mybutton.dart';
import 'package:dropshop/pages/home.dart';

class Register extends StatefulWidget {
  final Function()? onTap;
  Register({Key? key, required this.onTap}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
//controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  void wrongMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
            message,
            style: TextStyle(color: Colors.grey),
          )),
        );
      },
    );
  }

//signin user
  void signUpUser() async {
    //show loading circle ** make seprate method / components off it!

    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.greenAccent,
              backgroundColor: Colors.white,
            ),
          );
        });

    //lets try catch signup
    if (passwordController.text.trim() ==
        confirmpasswordController.text.trim()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim());
           
    
    
        await CreateUserData().then((value) => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home())));
      } on FirebaseAuthException catch (e) {
        Navigator.pop(context);
        //wrong password
        wrongMessage(e.message.toString());
      }
    } else {
      wrongMessage('Passwords dont match!');
    }
  }

  Future CreateUserData() async {
    FirebaseFirestore.instance.collection('Users').add({
      'email': emailController.text.trim().toString(),
      'name': usernameController.text.trim().toString(),
      'address':'',
      'verified': false
    });
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void random() {
    print('hello');
    setState(() {
      CircularProgressIndicator();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height - 30,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),

                  //logo
                  Icon(
                    Icons.lock,
                    size: 100,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  //welcome, you've been missed
                  Text(
                    'Create a new account!',
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),

                  SizedBox(height: 25),
                  //name textfieled
                  MyTextfield(
                    obsecuretext: false,
                    labeltext: 'name',
                    controller: usernameController,
                  ),
                  SizedBox(height: 15),
                  //emailname textfieled
                  MyTextfield(
                    obsecuretext: false,
                    labeltext: 'Email',
                    controller: emailController,
                  ),

                  SizedBox(height: 15),
                  //password textfield
                  MyTextfield(
                    obsecuretext: false,
                    labeltext: 'Password',
                    controller: passwordController,
                  ),
                  SizedBox(height: 15),
                  //password textfield
                  MyTextfield(
                    obsecuretext: false,
                    labeltext: 'Confirm Password',
                    controller: confirmpasswordController,
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  MyButton(
                    onTap: signUpUser,
                  ),

                  SizedBox(
                    height: 40,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      )),
                      Text(
                        'or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      )),
                    ],
                  ),

                  SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TileBox(
                        onPressed: () => AuthService().signinWithGoogle(),
                        iconD: Icons.gpp_good_sharp,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      TileBox(
                        onPressed: () {},
                        iconD: Icons.apple_sharp,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an Account?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          'Login now',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
