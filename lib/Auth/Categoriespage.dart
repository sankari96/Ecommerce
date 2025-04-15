import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:project1/Auth/Desklaptoppage.dart';
import 'package:project1/Auth/Homescreen.dart';
import 'package:project1/Auth/MenuScreen.dart';
import 'package:project1/Auth/Profilepage.dart'; 

class Categoriespage extends StatefulWidget {
  const Categoriespage({super.key});

  @override
  State<Categoriespage> createState() => _CategoriespageState();
}

class _CategoriespageState extends State<Categoriespage> {
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
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: 
        
        
        
        Column(
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
                  SizedBox(width: screenWidth * 0.22),
                  Text(
                    'Categories',
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
            SizedBox(
              height: screenHeight * 0.65,
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
                itemCount: image1.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.08,
                        width: screenWidth * 0.3,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Desklaptoppage(),
                              ),
                            );
                          },
                          child: Image.asset(image1[index]),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.008),
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
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: const Color.fromARGB(255, 0, 74, 134),
        showInactiveTitle: true,
        selectedIndex: _currentIndexs,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(screenWidth * 0.07),
          topRight: Radius.circular(screenWidth * 0.07),
        ),
        itemCornerRadius: 24,
        iconSize: screenWidth * 0.06,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndexs = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homescreen()),
                );
              },
              child: Icon(Icons.home, color: Colors.white),
            ),
            title: Text(' '),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Categoriespage()),
                );
              },
              child: Icon(Icons.view_cozy_rounded, color: Colors.white),
            ),
            title: Text(' '),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profilepage()),
                );
              },
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(' '),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen()),
                );
              },
              child: Icon(Icons.menu, color: Colors.white),
            ),
            title: Text(' '),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

