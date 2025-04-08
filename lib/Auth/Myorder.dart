import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Auth/Orderdetails.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Myorder extends StatefulWidget {
  const Myorder({super.key});

  @override
  State<Myorder> createState() => _MyorderState();
}

class _MyorderState extends State<Myorder> {
  List<String> text = ["Delivered", "Ordered", "Cancelled"];
  int _currentIndexs = 0;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final screenHeight = media.size.height;
    final screenWidth = media.size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                    SizedBox(width: screenWidth * 0.2),
                    Text(
                      'My Order',
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.8,
                child: ListView.builder(
                    itemCount: text.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.04,
                            vertical: screenHeight * 0.01),
                        padding: EdgeInsets.all(screenWidth * 0.03),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(77, 255, 255, 255),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        height: screenHeight * 0.28,
                        width: screenWidth * 0.9,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(30, 143, 143, 143),
                              ),
                              padding: EdgeInsets.all(screenWidth * 0.03),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Order ID :',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.035,
                                          color:
                                              Color.fromARGB(113, 0, 0, 0),
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                      Text(
                                        '123AS201',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.035,
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Tue, 10 Oct 2023',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.035,
                                          color:
                                              Color.fromARGB(126, 0, 0, 0),
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                      Text(
                                        'AED 24,999.00',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.035,
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: screenHeight * 0.1,
                                  width: screenWidth * 0.2,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: screenHeight * 0.01),
                                    child: Image.asset(
                                        'assets/samsung copy.png'),
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.03),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: screenHeight * 0.01),
                                        child: Text(
                                          'Samsung Galaxy S22 Ultra 5G ',
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.03,
                                            color: Color.fromARGB(
                                                126, 0, 0, 0),
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '( Phantom White,12GB-256GB ) ',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.028,
                                          color: Color.fromARGB(
                                              126, 0, 0, 0),
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                      SizedBox(height: screenHeight * 0.005),
                                      Text(
                                        'Qty: 2',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.027,
                                          color:
                                              Color.fromARGB(94, 0, 0, 0),
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                      SizedBox(height: screenHeight * 0.01),
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Orderdetails()));
                                            },
                                            child: Text(
                                              'View Details',
                                              style: TextStyle(
                                                fontSize:
                                                    screenWidth * 0.035,
                                                color: Color.fromARGB(
                                                    255, 1, 58, 104),
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                              width: screenWidth * 0.02),
                                          Icon(
                                            Icons.play_circle_outline,
                                            color: Color.fromARGB(
                                                255, 1, 58, 104),
                                            size: screenWidth * 0.04,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: screenHeight * 0.04,
                                  width: screenWidth * 0.2,
                                  decoration: BoxDecoration(
                                    color: text[index] == "Ordered"
                                        ? Color.fromARGB(49, 76, 175, 79)
                                        : Color.fromARGB(93, 244, 67, 54),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      text[index],
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.03,
                                        color: text[index] == "Ordered"
                                            ? Colors.green
                                            : Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Color.fromARGB(255, 0, 74, 134),
        showInactiveTitle: true,
        selectedIndex: _currentIndexs,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        itemCornerRadius: 24,
        iconSize: screenWidth * 0.06,
        curve: Curves.easeIn,
        onItemSelected: (index) =>
            setState(() => _currentIndexs = index),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            title: Text(' ', style: TextStyle(color: Colors.red)),
            activeColor: Colors.blue,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.view_cozy_rounded, color: Colors.white),
            title: Text(' ', style: TextStyle(color: Colors.red)),
            activeColor: Colors.blue,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            title: Text(' ', style: TextStyle(color: Colors.red)),
            activeColor: Colors.blue,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.menu, color: Colors.white),
            title: Text(' ', style: TextStyle(color: Colors.red)),
            activeColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
