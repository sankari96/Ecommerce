

import 'package:flutter/material.dart';

class Gedsetscreen extends StatefulWidget {
  const Gedsetscreen({super.key});

  @override
  State<Gedsetscreen> createState() => _GedsetscreenState();
}

class _GedsetscreenState extends State<Gedsetscreen> {
  int _currentIndex = 0;

  List<String> image = [
    "assets/Gedimage.png",
    "assets/Gedimage1.png",
    "assets/Gedimage2.png",
    "assets/Gedimage3.png",
    "assets/Gedimage4.png",
    "assets/Gedimage5.png",
    "assets/Gedimage6.png",
    "assets/Gedimage7.png",
  ];
   List<String> text = [
    "Airpods",
    "White headphone",
    "Wireless headphone",
    "White earbuds",
    "Black headphone",
    "Green headphone",
    "White  wireless",
    "Lightblack headphone",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final iconSize = screenWidth * 0.06;
    final fontSize = screenWidth * 0.05;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                        size: iconSize,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.18),
                    Text(
                      'Gadgets Items',
                      style: TextStyle(
                        fontSize: fontSize,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Container(
                height: screenHeight * 0.80,
                width: screenWidth * 0.85,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: screenWidth * 0.12,
                    mainAxisSpacing: screenHeight * 0.02,
                    childAspectRatio: 1.0,
                  ),
                  itemCount: image.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: screenHeight * 0.1,
                          width: screenWidth * 0.3,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.02),
                            child: Image.asset(image[index]),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Text(
                          text[index],
                          style: TextStyle(
                            fontSize: screenWidth * 0.03,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
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

