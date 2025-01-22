import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  List categories = [
    "assets/others/facebook.png",
    "assets/others/phonenew.png",
    "assets/others/facebook.png",
    "assets/others/phonenew.png",
    "assets/others/facebook.png",
    "assets/others/phonenew.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: SingleChildScrollView( // Wrap the Column with SingleChildScrollView
        child: Container(
          margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hey, Kunal!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Good Morning',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/others/user.png",
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: MediaQuery.of(context).size.width,
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Categories",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Color(0xFFfd6f3e),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFD6F3E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 90,
                    width: 90,
                    child: const Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 130.0,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: categories.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CategoryTile(image: categories[index]);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "All Products",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Color(0xFFfd6f3e),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    productCard("assets/images/Alley Palace.png", "Headphone",
                        "\$100"),
                    productCard("assets/images/Alley Palace.png", "Headphone1",
                        "\$500"),
                    productCard("assets/images/Alley Palace.png", "Headphone",
                        "\$1000"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget productCard(String image, String title, String price) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 120,
            width: 120,
            fit: BoxFit.cover,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 22.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Text(
                price,
                style: const TextStyle(
                  fontSize: 22.0,
                  color: Color(0xFFfd6f3e),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 50.0),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color(0xFFfd6f3e),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(Icons.add, color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String image;
  const CategoryTile({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 90,
      width: 90,
      child: Column(
        children: [
          Image.asset(
            image,
            height: 50.0,
            width: 50.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10.0),
          const Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}















// import 'package:flutter/material.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
//   List categories = [
//     "assets/others/facebook.png",
//     "assets/others/phonenew.png",
//     "assets/others/facebook.png",
//     "assets/others/phonenew.png",
//     "assets/others/facebook.png",
//     "assets/others/phonenew.png"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xfff2f2f2),
//       body: Container(
//         margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Hey, Kunal!',
//                     style: TextStyle(
//                       color: Colors.black,
//                         fontSize: 30.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text('Good Morning',
//                       //Semi bold
//                       style: TextStyle(
//                         color: Colors.black54,
//                         fontSize: 22.0,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 ),
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Image.asset(
//                       "assets/others/user.png",
//                     height: 70,
//                     width: 70,
//                     fit: BoxFit.cover,
//                   ),
//                 )
//               ],
//             ),
//
//             SizedBox(height: 30.0,),
//
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               width: MediaQuery.of(context).size.width,
//               child: TextField(
//                 decoration: InputDecoration(
//                   border: InputBorder.none,
//                   hintText: "Search",
//                   hintStyle: TextStyle(
//                     color: Colors.black54,
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.w500,
//                   ),
//                   prefixIcon: Icon(
//                     Icons.search,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ),
//
//             SizedBox(height: 20.0,),
//
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Categories",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold
//                   ),
//                 ),
//                 Text("See all",
//                   style: TextStyle(
//                       color: Color(0xFFfd6f3e),
//                       fontSize: 18.0,
//                       fontWeight: FontWeight.bold
//                   ),
//                 ),
//               ],
//             ),
//
//             SizedBox(height: 20.0,),
//
//             Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(20),
//                   margin: EdgeInsets.only(right: 20.0),
//                   decoration: BoxDecoration(
//                     color: Color(0xFFFD6F3E),
//                     borderRadius: BorderRadius.circular(10)
//                   ),
//                   height: 90,
//                   width: 90,
//                   child: Center(
//                     child: Text(
//                       "All",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//
//                 Expanded(
//                   child: Container(
//                     height: 130.0,
//                     child: ListView.builder(
//                       padding: EdgeInsets.zero,
//                         itemCount: categories.length,
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         itemBuilder: (context, index){
//                       return CategoryTile(image: categories[index]);
//                     }),
//                   ),
//                 ),
//               ],
//             ),
//
//             SizedBox(height: 20.0,),
//
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("All Products",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold
//                   ),
//                 ),
//                 Text("See all",
//                   style: TextStyle(
//                       color: Color(0xFFfd6f3e),
//                       fontSize: 18.0,
//                       fontWeight: FontWeight.bold
//                   ),
//                 ),
//               ],
//             ),
//
//             SizedBox(height: 20.0,),
//
//             Container(
//               height: 240,
//               child: ListView(
//                 shrinkWrap: true,
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(right: 20.0),
//                     padding: EdgeInsets.symmetric(horizontal: 20.0),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10)
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Image.asset("assets/images/Alley Palace.png",
//                           height: 120,
//                           width: 120,
//                           fit: BoxFit.cover,
//                         ),
//                         Text("Headphone",
//                           style: TextStyle(
//                             color: Colors.black54,
//                             fontSize: 22.0,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//
//                         SizedBox(height: 10.0,),
//
//                         Row(
//                           children: [
//                             Text("\$100",
//                               style: TextStyle(
//                                 fontSize: 22.0,
//                                 color: Color(0xFFfd6f3e),
//                                 fontWeight: FontWeight.bold
//                               ),
//                             ),
//
//                             SizedBox(width: 50.0,),
//
//                             Container(
//                               padding: EdgeInsets.all(5),
//                               decoration: BoxDecoration(
//                                 color: Color(0xFFfd6f3e),
//                                 borderRadius: BorderRadius.circular(5),
//                               ),
//                               child: Icon(Icons.add, color: Colors.white,))
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//
//                   Container(
//                     margin: EdgeInsets.only(right: 20.0),
//                     padding: EdgeInsets.symmetric(horizontal: 20.0),
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10)
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Image.asset("assets/images/Alley Palace.png",
//                           height: 120,
//                           width: 120,
//                           fit: BoxFit.cover,
//                         ),
//                         Text("Headphone1",
//                           style: TextStyle(
//                             color: Colors.black54,
//                             fontSize: 22.0,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//
//                         SizedBox(height: 10.0,),
//
//                         Row(
//                           children: [
//                             Text("\$500",
//                               style: TextStyle(
//                                   fontSize: 22.0,
//                                   color: Color(0xFFfd6f3e),
//                                   fontWeight: FontWeight.bold
//                               ),
//                             ),
//
//                             SizedBox(width: 50.0,),
//
//                             Container(
//                                 padding: EdgeInsets.all(5),
//                                 decoration: BoxDecoration(
//                                   color: Color(0xFFfd6f3e),
//                                   borderRadius: BorderRadius.circular(5),
//                                 ),
//                                 child: Icon(Icons.add, color: Colors.white,),
//                             ),
//
//                             Container(
//                               // margin: EdgeInsets.only(right: 20.0),
//                               padding: EdgeInsets.symmetric(horizontal: 20.0),
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(10)
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Image.asset("assets/images/Alley Palace.png",
//                                     height: 120,
//                                     width: 120,
//                                     fit: BoxFit.cover,
//                                   ),
//                                   Text("Headphone5",
//                                     style: TextStyle(
//                                       color: Colors.black54,
//                                       fontSize: 22.0,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   ),
//
//                                   SizedBox(height: 10.0,),
//
//                                   Row(
//                                     children: [
//                                       Text("\$1000",
//                                         style: TextStyle(
//                                             fontSize: 22.0,
//                                             color: Color(0xFFfd6f3e),
//                                             fontWeight: FontWeight.bold
//                                         ),
//                                       ),
//
//                                       SizedBox(width: 50.0,),
//
//                                       Container(
//                                           padding: EdgeInsets.all(5),
//                                           decoration: BoxDecoration(
//                                             color: Color(0xFFfd6f3e),
//                                             borderRadius: BorderRadius.circular(5),
//                                           ),
//                                           child: Icon(Icons.add, color: Colors.white,))
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class CategoryTile extends StatelessWidget {
//
//   String image;
//   CategoryTile({required this.image});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(20),
//       margin: EdgeInsets.only(right: 20.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10)
//       ),
//       height: 90,
//       width: 90,
//       child: Column(
//         children: [
//           Image.asset(image,
//             height: 50.0,
//             width: 50.0,
//             fit: BoxFit.cover,
//           ),
//
//           SizedBox(height: 10.0,),
//
//           Icon(Icons.arrow_forward)
//         ],
//       ),
//     );
//   }
// }
//
