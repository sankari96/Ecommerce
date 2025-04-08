// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/icon_map.dart';
// import 'package:project1/Auth/Categoriespage.dart';

// import 'package:flutter/material.dart';
// import 'package:project1/Auth/Homescreen.dart';

// class Yourorder extends StatefulWidget {
//   const Yourorder({super.key});

//   @override
//   State<Yourorder> createState() => _YourorderState();
// }

// class _YourorderState extends State<Yourorder> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const SizedBox(height: 250),
//           Center(
//             child: Container(
//               height: 100,
//               width: 200,
//               child: const Image(
//                 image: AssetImage("assets/CheckCircle1.png"),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           const Text(
//             'Your order is successfully placed',
//             style: TextStyle(
//               fontSize: 20,
//               color: Colors.black,
//               fontFamily: 'Poppins',
//             ),
//           ),
//           const SizedBox(height: 10),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 27),
//             child: Text(
//               'Lorem ipsum dolor sit amet, erat porttitor eget. Vestibulum quis orci lacus. Sed in neque in nisi suscipit laoreet ac.',
//               textAlign: TextAlign.center,
//               overflow: TextOverflow.clip,
//               style: TextStyle(
//                 fontSize: 10,
//                 color: Colors.black,
//                 fontFamily: 'Poppins',
//               ),
//             ),
//           ),
//           const SizedBox(height: 40),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 45),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // BACK TO HOME BUTTON
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) =>
//                               Homescreen()), // Ensure this class is defined
//                     );
//                   },
//                   child: Container(
//                     width: 130,
//                     height: 40,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       border: Border.all(
//                         color: const Color.fromARGB(255, 0, 85, 155),
//                         width: 2,
//                       ),
//                     ),
//                     child: Center(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Icon(
//                             Icons.layers_outlined,
//                             color: Color.fromARGB(255, 0, 79, 143),
//                             size: 20,
//                           ),
//                           const SizedBox(width: 5),
//                           const Text(
//                             "BACK TO HOME",
//                             style: TextStyle(
//                               fontSize: 11,
//                               color: Color.fromARGB(255, 0, 79, 143),
//                               fontWeight: FontWeight.w500,
//                               fontFamily: 'Poppins',
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 15),
//                 // VIEW ORDER BUTTON
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) =>
//                               Categoriespage()), // Ensure this class is defined
//                     );
//                   },
//                   child: Container(
//                     width: 130,
//                     height: 40,
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 0, 38, 104),
//                       borderRadius: BorderRadius.circular(5),
//                       border: Border.all(
//                         color: Color.fromARGB(255, 0, 38, 104),
//                         width: 2,
//                       ),
//                     ),
//                     child: Center(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             "VIEW ORDER",
//                             style: TextStyle(
//                               fontSize: 11,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w500,
//                               fontFamily: 'Poppins',
//                             ),
//                           ),
//                           SizedBox(width: 5),
//                           Icon(
//                             Icons.east,
//                             color: Colors.white,
//                             size: 20,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:project1/Auth/Categoriespage.dart';
import 'package:project1/Auth/Homescreen.dart';
import 'package:project1/Auth/Orderdetails.dart';

class Yourorder extends StatefulWidget {
  const Yourorder({super.key});

  @override
  State<Yourorder> createState() => _YourorderState();
}

class _YourorderState extends State<Yourorder> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.3),
          Center(
            child: Container(
              height: screenHeight * 0.12,
              width: screenWidth * 0.45,
              child: const Image(
                image: AssetImage("assets/CheckCircle1.png"),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.03),
          const Text(
            'Your order is successfully placed',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: screenHeight * 0.015),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
            child: const Text(
              'Lorem ipsum dolor sit amet, erat porttitor eget. Vestibulum quis orci lacus. Sed in neque in nisi suscipit laoreet ac.',
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.05),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // BACK TO HOME BUTTON
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homescreen()),
                    );
                  },
                  child: Container(
                    width: screenWidth * 0.35,
                    height: screenHeight * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 85, 155),
                        width: 2,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.layers_outlined,
                          color: Color.fromARGB(255, 0, 79, 143),
                          size: 20,
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          "BACK TO HOME",
                          style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 0, 79, 143),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: screenWidth * 0.04),
                // VIEW ORDER BUTTON
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Orderdetails()),
                    );
                  },
                  child: Container(
                    width: screenWidth * 0.35,
                    height: screenHeight * 0.05,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 38, 104),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 38, 104),
                        width: 2,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "VIEW ORDER",
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.east,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

