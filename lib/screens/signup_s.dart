// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:mcaflex/screens/home_s.dart';
// import 'package:mcaflex/services/database.dart';
// import 'package:mcaflex/services/shared_pref.dart';
// import 'package:random_string/random_string.dart';
//
// class SignUpPage extends StatefulWidget {
//   const SignUpPage({super.key});
//
//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }
//
// class _SignUpPageState extends State<SignUpPage> {
//
//   String email = "", password = "", name = "";
//   TextEditingController namecontroller = new TextEditingController();
//   TextEditingController passwordcontroller = new TextEditingController();
//   TextEditingController mailcontroller = new TextEditingController();
//
//   registration() async {
//     if (password != null &&
//         namecontroller.text != "" &&
//         mailcontroller.text != "")
//     {
//       try
//       {
//         UserCredential userCredential = await FirebaseAuth.instance
//             .createUserWithEmailAndPassword (email: email, password: password);
//
//         String id = randomAlphaNumeric(10);
//         Map<String, dynamic> userInfoMap = {
//           "Name": namecontroller.text,
//           "Email" : mailcontroller.text,
//           "Image" : "https://cdn.wallpapersafari.com/88/4/uyMe8v.jpg",
//           "Id" : id
//         };
//
//         await SharedpreferenceHelper().saveUserDisplayName(namecontroller.text);
//         await SharedpreferenceHelper().saveUserEmail(mailcontroller.text);
//         await SharedpreferenceHelper().saveUserId(id);
//         await SharedpreferenceHelper().saveUserImage("https://cdn.wallpapersafari.com/88/4/uyMe8v.jpg");
//
//         await DatabaseMethods().addUserDetails(userInfoMap, id).then((value) {
//           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//             backgroundColor: Colors.green,
//             content: Text(
//               "Registered Successfully",
//               style: TextStyle(
//                   fontSize: 20.0,
//                   color: Colors.green
//               ),
//             ),
//           ));
//           Navigator.pushReplacement(context,
//               MaterialPageRoute(builder: (context) => HomePage()));
//         });
//       } on FirebaseAuthException catch (e) {
//         if (e.code == 'weak-password') {
//           ScaffoldMessenger.of(context).showSnackBar (
//               SnackBar(
//                   backgroundColor: Colors.orangeAccent,
//                   content: Text(
//                     "Password Provided is too Weak",
//                     style: TextStyle(fontSize: 18.0),
//                   )
//               )
//           ); // Text // SnackBar
//         } else if (e.code == "email-already-in-use") {
//           ScaffoldMessenger.of(context).showSnackBar
//             (
//               SnackBar
//                 (
//                   backgroundColor: Colors.orangeAccent,
//                   content: Text
//                     (
//                     "Account Already exists",
//                     style: TextStyle(fontSize: 18.0),
//                   )
//               )
//           ); // Text // SnackBar
//
//           @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//     );
//   }
// }
