
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Auth/Productlist.dart';

class Desklaptoppage extends StatefulWidget {
  const Desklaptoppage({super.key});

  @override
  State<Desklaptoppage> createState() => _DesklaptoppageState();
}

class _DesklaptoppageState extends State<Desklaptoppage> {
  int _currentIndex = 0;

  List<String> image = [
    "assets/Lenovo.png",
    "assets/hpimage.png",
    "assets/tabimage.png",
    "assets/Dell.png",
    "assets/asusimage.png",
    "assets/appleimage.png",
    "assets/Samsung.png",
    "assets/All in one pc.png",
  ];

  List<String> text = [
    "Lenovo",
    "HP",
    "Tablets",
    "Dell",
    "Asus",
    "Apple",
    "Samsung",
    "All in One PC",
  ];

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.2),
                    Text(
                      'Desktop & Laptop',
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Container(
                width: screenWidth * 0.9,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: screenWidth * 0.1,
                    mainAxisSpacing: screenHeight * 0.015,
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
                                horizontal: screenWidth * 0.02,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Productlist(),
                                    ),
                                  );
                                },
                                child: Image.asset(image[index]),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.005),
                        Text(
                          text[index],
                          style: TextStyle(
                            fontSize: screenWidth * 0.03,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
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
