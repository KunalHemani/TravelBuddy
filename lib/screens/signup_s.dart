import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  String email = "", password = "", name = "";
  TextEditingController namecontroller = new TextEditingController(); TextEditingController passwordcontroller = new TextEditingController() TextEditingController mailcontroller = new TextEditing Controller();
  registration() async {
  if (password != null &&
  namecontroller.text != && mailcontroller.text != "") {
  try {
  UserCredential userCredential = await FirebaseAuth.instance .createUserWithEmailAnd Password (email: email, password: pass
  } on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
  ScaffoldMessenger. of (context).showSnackBar (SnackBar(
  backgroundColor:
  content: Text(
  Colors.orangeAccent,
  "Password Provided is too Weak",
  style: TextStyle(fontSize: 18.0),
  ))); // Text // SnackBar
  } else if (e.code == "email-already-in-use") { ScaffoldMessenger.of(context).showSnackBar (SnackBar(
  backgroundColor:
  content: Text(
  Colors.orangeAccent,
  "Account Already exists",
  style: TextStyle(fontSize: 18.0),
  ))); // Text // SnackBar
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
