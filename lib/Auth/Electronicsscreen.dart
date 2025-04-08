
import 'package:flutter/material.dart';

class Electronicsscreen extends StatefulWidget {
  const Electronicsscreen({super.key});

  @override
  State<Electronicsscreen> createState() => _ElectronicsscreenState();
}

class _ElectronicsscreenState extends State<Electronicsscreen> {
  int _currentIndex = 0;

  List<String> image = [
    "assets/camera.png",
    "assets/lens.png",
    "assets/mobileframe.png",
    "assets/smartwatch.png",
    "assets/laptop.png",
    "assets/machine.png",
    "assets/tab3.png",
    "assets/speaker4.png",
  ];

  List<String> text = [
    "Camera",
    "Lens",
    "Mobileframe",
    "Smartwatch",
    "Laptop",
    "Machine",
    "Tab",
    "Speaker",
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final iconSize = screenWidth * 0.06;
    final fontSize = screenWidth * 0.04;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.04,
                  vertical: screenHeight * 0.02,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                        size: iconSize,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.23),
                    Text(
                      'Electronics Items',
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
                height: screenHeight * 0.75,
                width: screenWidth * 0.85,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: screenWidth * 0.08,
                    mainAxisSpacing: screenHeight * 0.02,
                    childAspectRatio: 1.0,
                  ),
                  itemCount: image.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: screenHeight * 0.08,
                          width: screenWidth * 0.3,
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.02),
                              child: Image.asset(image[index]),
                            ),
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

