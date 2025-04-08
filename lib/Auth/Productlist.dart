// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class Productlist extends StatefulWidget {
//   const Productlist({super.key});

//   @override
//   State<Productlist> createState() => _ProductlistState();
// }

// class _ProductlistState extends State<Productlist> {
//   int _currentIndex = 0;

//   final TextEditingController _SearchController = TextEditingController();
//   List<String> image1 = [
//     "assets/asuszenimage.png",
//     "assets/asusvivoimage.png",
//     "assets/asustufimage.png",
//     "assets/asusrogimage.png",
//     "assets/zenbookimage.png",
//     "assets/vivobookimage.png"
//   ];
//   List<String> text1 = [
//     "ASUS ZenBook 14 Flip OLE...",
//     "ASUS vivo book pro",
//     "ASUS TUF Gaming 14",
//     "ASUS ROG Strik G17 Ryzen",
//     "ASUS ZenBook 14 Flip OLE...",
//     "ASUS vivo book pro",
//   ];
//   List<String> text2 = [
//     "AED 42900",
//     "AED 42900",
//     "AED 42900",
//     "AED 42900",
//     "AED 42900",
//     "AED 42900",
//   ];
//   List<String> text3 = [
//     "AED74999",
//     "AED74999",
//     "AED74999",
//     "AED74999",
//     "AED74999",
//     "AED74999"
//   ];
//   List<String> text4 = [
//     "10% off",
//     "15% off",
//     "10% off",
//     "15% off",
//     "10% off",
//     "15% off"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//             child: Padding(
//                 padding: const EdgeInsets.only(top: 50,left: 15),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                         height: 50,
//                         width: 360,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(30),
//                             color: Color.fromARGB(255, 0, 74, 134)),
//                         child: TextFormField(
//                             controller: _SearchController,
//                             decoration: InputDecoration(
//                                 contentPadding: EdgeInsets.only(top: 10),
//                                 prefixIcon: Padding(
//                                   padding:
//                                       const EdgeInsets.symmetric(vertical: 10),
//                                   child: Icon(
//                                     Icons.search,
//                                     color: Colors.white,
//                                     size: 40,
//                                   ),
//                                 ),
//                                 hintText: "Search",
//                                 enabledBorder: InputBorder.none,
//                                 hintStyle: TextStyle(
//                                     fontSize: 13, color: Colors.white),
//                                 border: InputBorder.none),
//                             validator: (value) {}),
//                       ),
//                        SizedBox(
//                       height: 700,
//                       child: GridView.builder(
//                         physics: NeverScrollableScrollPhysics(),
//                           shrinkWrap: true,
//                            gridDelegate:
//                               SliverGridDelegateWithFixedCrossAxisCount(
//                             crossAxisCount: 2,
//                             //Number of columns
//                             crossAxisSpacing: 20, mainAxisSpacing: 55,
//                              //Aspect ratio of grid items
//                           ),
//                           itemCount: 6, //Total items
//                           itemBuilder: (context, index) {
//                             return Container(
//                               height:120,
//                               width: 150,
//                               child: Padding(
//                                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                                 child: Column(
//                                   children: [
//                                     Container(
//                                         height: 120,
//                                         width: 180,
//                                         child: Image.asset(
//                                             image1[index].toString())),
//                                     Row(
//                                       children: [
//                                         Text(textAlign: TextAlign.start,
//                                           text1[index].toString(),
//                                           style: TextStyle(
//                                               fontSize: 10,
//                                               color: Colors.black,
//                                               fontFamily: 'Poppins'),
//                                         ),
//                                       ],
//                                     ),
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: [
                                        
//                                         Text(textAlign: TextAlign.start,
//                                           text2[index].toString(),
//                                           style: TextStyle(
//                                               fontSize: 10,
//                                               color: Colors.black,
//                                               fontFamily: 'Poppins'),
//                                         ),
//                                         SizedBox(
//                                           width: 5,
//                                         ),
//                                         Text(textAlign: TextAlign.start,
//                                           text3[index].toString(),
//                                           style: TextStyle(
//                                               decoration: TextDecoration
//                                                   .lineThrough,
//                                               decorationColor: Colors.red,
//                                               fontSize: 10,
//                                               color: Colors.red,
//                                               fontFamily: 'Poppins'),
//                                         ),
//                                       ],
//                                     ),SizedBox(height: 5,),
//                                     Row(mainAxisAlignment: MainAxisAlignment.start,
//                                       children: [
                                        
//                                         Text(textAlign: TextAlign.start,
//                                           text4[index].toString(),
//                                           style: TextStyle(
//                                             fontSize: 10,
//                                             color: Colors.black,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color:Color.fromARGB(8, 71, 70, 70)),
//                             );
//                           }),
//                     ),

//                     ]))));
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Productlist extends StatefulWidget {
  const Productlist({super.key});

  @override
  State<Productlist> createState() => _ProductlistState();
}

class _ProductlistState extends State<Productlist> {
  int _currentIndex = 0;

  final TextEditingController _SearchController = TextEditingController();

  List<String> image1 = [
    "assets/asuszenimage.png",
    "assets/asusvivoimage.png",
    "assets/asustufimage.png",
    "assets/asusrogimage.png",
    "assets/zenbookimage.png",
    "assets/vivobookimage.png"
  ];
  List<String> text1 = [
    "ASUS ZenBook 14 Flip OLE...",
    "ASUS vivo book pro",
    "ASUS TUF Gaming 14",
    "ASUS ROG Strik G17 Ryzen",
    "ASUS ZenBook 14 Flip OLE...",
    "ASUS vivo book pro",
  ];
  List<String> text2 = [
    "AED 42900",
    "AED 42900",
    "AED 42900",
    "AED 42900",
    "AED 42900",
    "AED 42900",
  ];
  List<String> text3 = [
    "AED74999",
    "AED74999",
    "AED74999",
    "AED74999",
    "AED74999",
    "AED74999"
  ];
  List<String> text4 = [
    "10% off",
    "15% off",
    "10% off",
    "15% off",
    "10% off",
    "15% off"
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final screenWidth = media.size.width;
    final screenHeight = media.size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.05, left: screenWidth * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Container(
                height: screenHeight * 0.06,
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 0, 74, 134),
                ),
                child: TextFormField(
                  controller: _SearchController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: screenHeight * 0.01),
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: screenWidth * 0.07,
                      ),
                    ),
                    hintText: "Search",
                    enabledBorder: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: screenWidth * 0.035,
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.01),

              // Product Grid
              SizedBox(
                height: screenHeight * 0.95,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: screenWidth * 0.10,
                    mainAxisSpacing: screenHeight * 0.05,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: image1.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(8, 71, 70, 70),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: screenHeight * 0.10,
                            width: screenWidth * 0.35,
                            child: Image.asset(image1[index], fit: BoxFit.contain),
                          ),
                          SizedBox(height: screenHeight * 0.005),
                          Text(
                            text1[index],
                            style: TextStyle(
                              fontSize: screenWidth * 0.03,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                text2[index],
                                style: TextStyle(
                                  fontSize: screenWidth * 0.03,
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.01),
                              Text(
                                text3[index],
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.red,
                                  fontSize: screenWidth * 0.03,
                                  color: Colors.red,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.005),
                          Text(
                            text4[index],
                            style: TextStyle(
                              fontSize: screenWidth * 0.03,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
