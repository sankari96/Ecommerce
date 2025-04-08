
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:project1/Auth/Cartscreen.dart';
import 'package:project1/Auth/Categoriespage.dart';
import 'package:project1/Auth/Desklaptoppage.dart';
import 'package:project1/Auth/Electronicsscreen.dart';
import 'package:project1/Auth/MenuScreen.dart';
import 'package:project1/Auth/Product%20Details.dart';
import 'package:project1/Auth/Productlist.dart';
import 'package:project1/Auth/Profilepage.dart';
import 'package:project1/Auth/Search%20list.dart';
import 'package:project1/Auth/gedsetscreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _currentIndex = 0;
  int _currentIndexs = 0;

  final TextEditingController _SearchController = TextEditingController();

  List<String> image2 = [
    "assets/banner.png",
    "assets/banner1.jpg",
    "assets/banner2.jpg",
    "assets/banner3.jpg",
    "assets/banner4.jpg",
  ];

  List<String> image1 = [
    "assets/image11.png",
    "assets/image12.png",
    "assets/image14.png",
    "assets/image13.png",
  ];

  List<String> text1 = [
    "Galaxy M33 (4 GB | 64 GB)",
    "Redmi M53 (4 GB | 64 GB)",
    "Oppo M33 (4 GB| 64 GB)",
    "Lenovo M53 (4GB | 64 GB )"
  ];
  List<String> text2 = ["AED 42900", "AED 42900", "AED 42900", "AED 42900"];
  List<String> text3 = ["AED74999", "AED74999", "AED74999", "AED74999"];
  List<String> text4 = ["10% off", "15% off", "10% off", "15% off"];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.01),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Welcome back!',
                          style: TextStyle(fontSize: 13, fontFamily: 'Poppins'),
                        ),
                        Text(
                          'Lorem ipsum',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.shopping_cart_outlined, size: 25),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Cartscreen()));
                      },
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.015),
                Container(
                  height: 50,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 0, 74, 134)),
                  child: TextFormField(
                    controller: _SearchController,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Searchlist()));
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search,
                          color: Colors.white, size: 30),
                      hintText: "What are you looking for...",
                      hintStyle: TextStyle(fontSize: 13, color: Colors.white),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                CarouselSlider(
                  items: image2
                      .map((item) => Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage(item),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                    height: screenHeight * 0.15,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: image2.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => setState(() => _currentIndex = entry.key),
                      child: Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == entry.key
                              ? Colors.blue
                              : Colors.grey,
                        ),
                      ),
                    );
                  }).toList(),
                ),
                sectionHeader("Categories", onViewAllTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Categoriespage()));
                }),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategoryItem("assets/image15.png", "Desktop&Laptop",
                          () => Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Desklaptoppage()))),
                      buildCategoryItem("assets/mobile.png", "Mobile Phones",
                          () => Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Searchlist()))),
                      buildCategoryItem("assets/image16.png", "Electronics",
                          () => Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Electronicsscreen()))),
                      buildCategoryItem("assets/image17.png", "Gadgets",
                          () => Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Gedsetscreen()))),
                    ],
                  ),
                ),
                sectionHeader("Latest Mobiles", onViewAllTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) =>Searchlist ()));
                }),
                SizedBox(
                  height: screenHeight * 0.5,
                  width: screenWidth,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.8,
                    ),
                    itemCount: image1.length,
                    itemBuilder: (context, index) {
                      return buildProductCard(
                          context, index, screenWidth, screenHeight);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: const Color.fromARGB(255, 0, 74, 134),
        selectedIndex: _currentIndexs,
         borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        showInactiveTitle: true,
        onItemSelected: (index) {
          setState(() => _currentIndexs = index);
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const Homescreen()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => Categoriespage()));
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => Profilepage()));
              break;
            case 3:
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => MenuScreen()));
              break;
          }
        },
        items: [
          BottomNavyBarItem(icon: Icon(Icons.home, color: Colors.white), title: Text(''), activeColor: Colors.blue),
          BottomNavyBarItem(icon: Icon(Icons.view_cozy_rounded, color: Colors.white), title: Text(''), activeColor: Colors.blue),
          BottomNavyBarItem(icon: Icon(Icons.person, color: Colors.white), title: Text(''), activeColor: Colors.blue),
          BottomNavyBarItem(icon: Icon(Icons.menu, color: Colors.white), title: Text(''), activeColor: Colors.blue),
        ],
      ),
    );
  }

  Widget sectionHeader(String title, {VoidCallback? onViewAllTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(title,
              style: const TextStyle(
                  fontSize: 13, fontFamily: 'Poppins', color: Colors.blue)),
          const Spacer(),
          InkWell(
            onTap: onViewAllTap,
            child: const Text(
              'View all',
              style: TextStyle(fontSize: 13, color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }

  Widget buildCategoryItem(String image, String label, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        width: 90,
        height: 70,
        child: Column(
          children: [
            Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white10),
              child: Image.asset(image),
            ),
            const SizedBox(height: 5),
            Text(label,
                style: const TextStyle(
                    fontSize: 10, color: Colors.black, fontFamily: 'Poppins'))
          ],
        ),
      ),
    );
  }

  Widget buildProductCard(BuildContext context, int index, double width, double height) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => ProductDetails(
                      image: image1[index],
                      mobilemodel: text1[index],
                      mobilename: text2[index],
                      mobileprice: text3[index],
                    )));
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image1[index], height: height * 0.12),
            const SizedBox(height: 5),
            Text(text1[index],
                style: const TextStyle(fontSize: 10, fontFamily: 'Poppins')),
            Row(
              children: [
                Text(text2[index],
                    style:
                        const TextStyle(fontSize: 10, fontFamily: 'Poppins')),
                const SizedBox(width: 5),
                Text(text3[index],
                    style: const TextStyle(
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.red,
                        fontFamily: 'Poppins')),
              ],
            ),
            Text(text4[index], style: const TextStyle(fontSize: 10))
          ],
        ),
      ),
    );
  }
}

