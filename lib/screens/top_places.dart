import 'package:flutter/material.dart';

class TopPlaces extends StatefulWidget {
  const TopPlaces({super.key});

  @override
  State<TopPlaces> createState() => _TopPlacesState();
}

class _TopPlacesState extends State<TopPlaces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Material(
                    elevation: 3.0,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 5),
                  Text(
                    "Top Places",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Material(
                elevation: 3.0,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 30.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Material(
                              elevation: 3.0,
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/images_s/bali.jpg",
                                    height: 300,
                                    width: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 250),
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.black26,
                                    borderRadius: BorderRadius.only
                                      (
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Bali",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30.0,
                                          fontFamily: 'Pacifico',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ]),
                            ),

                            Material(
                              elevation: 3.0,
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/images_s/india.jpg",
                                    height: 300,
                                    width: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 250),
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.black26,
                                    borderRadius: BorderRadius.only
                                      (
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "India",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30.0,
                                          fontFamily: 'Pacifico',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),

                        SizedBox(height: 20.0,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Material(
                              elevation: 3.0,
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/images_s/mexico.jpg",
                                    height: 300,
                                    width: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 250),
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.black26,
                                    borderRadius: BorderRadius.only
                                      (
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Mexico",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30.0,
                                          fontFamily: 'Pacifico',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ]),
                            ),

                            Material(
                              elevation: 3.0,
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/images_s/france.jpg",
                                    height: 300,
                                    width: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 250),
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.black26,
                                    borderRadius: BorderRadius.only
                                      (
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "France",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30.0,
                                          fontFamily: 'Pacifico',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),

                        SizedBox(height: 20.0,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Material(
                              elevation: 3.0,
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/images_s/newyork.jpg",
                                    height: 300,
                                    width: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 250),
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.black26,
                                    borderRadius: BorderRadius.only
                                      (
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "New York",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30.0,
                                          fontFamily: 'Pacifico',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ]),
                            ),

                            Material(
                              elevation: 3.0,
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/images_s/dubai.jpg",
                                    height: 300,
                                    width: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 250),
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.black26,
                                    borderRadius: BorderRadius.only
                                      (
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Dubai",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30.0,
                                          fontFamily: 'Pacifico',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),

                        SizedBox(height: 50.0,),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
