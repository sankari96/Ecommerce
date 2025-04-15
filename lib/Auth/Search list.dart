import 'package:flutter/material.dart';
import 'package:project1/Auth/Product%20Details.dart';
import 'package:project1/Model/ModelViewsearch.dart';
import 'package:project1/Model/Seachlistcontrolls.dart';

class Searchlist extends StatefulWidget {
  const Searchlist({super.key});

  @override
  State<Searchlist> createState() => _SearchlistState();
}

class _SearchlistState extends State<Searchlist> {
  final TextEditingController _SearchController = TextEditingController();

  List<String> image1 = [
    "assets/gp1.png",
    "assets/gp2.png",
    "assets/gp3.png",
    "assets/gp4.png",
    "assets/gp5.png",
    "assets/gp6.png"
  ];
  List<String> text1 = [
    "Galaxy M33 (4 GB | 64 GB)",
    "Galaxy M53 (4 GB | 64 GB)",
    "Redmi M33 (4 GB | 64 GB)",
    "Redmi M53 (4 GB | 64 GB )",
    "Realme M33 (4 GB | 64 GB)",
    "Realme M53 (4 GB | 64 GB )"
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                    contentPadding: EdgeInsets.only(top: screenHeight * 0.012),
                    prefixIcon: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: screenWidth * 0.07,
                      ),
                    ),
                    hintText: "Mobile",
                    hintStyle: TextStyle(
                      fontSize: screenWidth * 0.035,
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                  validator: (value) {},
                ),
              ),
              SizedBox(
                height: screenHeight * 1.15,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: screenWidth * 0.10,
                    mainAxisSpacing: screenHeight * 0.05,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: image1.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetails(
                              image: image1[index],
                              mobilemodel: text1[index],
                              mobilename: text2[index],
                              mobileprice: text3[index],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white30,
                        ),
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: screenHeight * 0.15,
                              width: double.infinity,
                              child: InkWell(
                                 onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>TodoView ()));
                },


                                child: Image.asset(
                                  image1[index],
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Text(
                              text1[index],
                              style: TextStyle(
                                fontSize: screenWidth * 0.03,
                                color: Colors.black,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.005),
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
                                SizedBox(width: screenWidth * 0.02),
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

