
import 'package:flutter/material.dart';
import 'package:project1/Auth/Desklaptoppage.dart';
import 'package:project1/Auth/Productlist.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _currentIndexs = 0;

  List<String> image1 = [
    "assets/laptop1.png",
    "assets/mobiles2.png",
    "assets/tab3.png",
    "assets/speaker4.png",
    "assets/group1041.png",
    "assets/watch5.png"
  ];

  List<String> text2 = [
    "Desktop & Laptop",
    "Mobiles",
    "Tablets",
    "Electronics",
    "Gadgets",
    "Smart Technology",
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final screenWidth = media.size.width;
    final screenHeight = media.size.height;

    return Scaffold(
      body: SafeArea(
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
                      size: screenWidth * 0.06,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.28),
                  Text(
                    'Menu',
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
              height: screenHeight * 0.7,
              width: screenWidth * 0.85,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: screenWidth * 0.1,
                  mainAxisSpacing: screenHeight * 0.015,
                  childAspectRatio: 1,
                ),
                itemCount: image1.length,
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
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Desklaptoppage()));
                              },
                              child: Image.asset(image1[index]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        text2[index],
                        textAlign: TextAlign.center,
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
    );
  }
}
