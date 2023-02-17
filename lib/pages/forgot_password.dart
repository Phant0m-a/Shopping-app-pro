import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../components/mybutton.dart';
import '../components/mytextfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController resetEmailController = TextEditingController();

  Future resetPassword() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: resetEmailController.text.trim());
      myAlertDialog('Password reset link has been sent to your Email!');
      Navigator.of(context).pop();
    } on FirebaseAuthException catch (e) {
      print(e);
      myAlertDialog(e.message.toString());
    }
  }

  //dialog
  void myAlertDialog(String message) {
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

  @override
  void dispose() {
    resetEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text(
          'Reset password',
        )),
        body: Container(
            child: Column(
          children: [
            SizedBox(height: 15),
            MyTextfield(
              obsecuretext: false,
              labeltext: 'Email',
              controller: resetEmailController,
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: resetPassword,
              child: Container(
                padding: const EdgeInsets.all(25),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Reset Pasword',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    ));
  }
}
