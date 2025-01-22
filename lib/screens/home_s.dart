import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images_s/home.png",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0, right: 20.0, left: 20.0),
                  child: Row(
                    children: [
                      Material(
                        elevation: 3.0,
                      borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            "assets/images_s/pin.png",
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          )
                        ),
                      ),

                      Spacer(),

                      Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          child: Icon(Icons.add, color: Colors.blue, size: 30.0,),
                        ),
                      ),

                      SizedBox(width: 12.0,),

                      Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(60),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset(
                            "assets/images_s/boy.jpg",
                            height: 50.0,
                            width: 50.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 160.0, left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Travel Buddy",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato',
                          fontSize: 60.0,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        "Travel Community App",
                        style: TextStyle(
                          color: Color.fromARGB(205, 255, 255, 255),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.0,
                    right: 30.0,
                    top: MediaQuery.of(context).size.height / 2.7
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      // padding: EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1.5),
                        borderRadius: BorderRadius.circular(11)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search your destination",
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

            SizedBox(height: 40.0,),

            Container(
              margin: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Material(
                elevation: 3.0,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 10.0),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "assets/images_s/boy.jpg",
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                            ),

                            SizedBox(width: 15.0,),

                            Text(
                              "Kunal Hemani",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20.0,),

                      Image.asset(
                        "assets/images_s/tajmahal.jpg"
                      ),
                      SizedBox(height: 5.0,),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.blue,),
                            Text(
                              "Taj Mahal, Agra, India",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Description of taj mahal",
                          style: TextStyle(
                            color: Color.fromARGB(179, 0, 0, 0),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      SizedBox(height: 10.0,),

                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: [
                            Icon(Icons.favorite_outline, color: Colors.black54, size: 30.0,),
                            SizedBox(width: 10.0,),
                            Text(
                              "Like",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 30.0,),
                            Icon(Icons.comment_outlined, color: Colors.black54, size: 28.0,),
                            SizedBox(width: 10.0,),
                            Text(
                              "Comment",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 10.0,),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
