
import 'package:flutter/material.dart';
import 'package:project1/Auth/Selectaddress.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                      size: width * 0.06,
                    ),
                  ),
                  SizedBox(width: width * 0.3),
                  Text(
                    'Cart',
                    style: TextStyle(
                      fontSize: width * 0.05,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),

            // Cart Item 1
            cartItem(
              context,
              image: "assets/gp3.png",
              title: 'Galaxy M33',
              description: '(4GB | 64 GB)',
              price: 'AED 42900',
              originalPrice: 'AED74999',
            ),

            // Cart Item 2
            cartItem(
              context,
              image: "assets/gp2.png",
              title: 'Galaxy M33',
              description: '(4GB | 64 GB)',
              price: 'AED 42900',
              originalPrice: 'AED74999',
            ),

            // Cart Summary
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: height * 0.015),
              child: Row(
                children: [
                  Text(
                    'Cart Summary',
                    style: TextStyle(fontSize: width * 0.045, fontFamily: 'Poppins', color: Colors.black),
                  ),
                ],
              ),
            ),
            cartSummaryRow('Cart Total', 'AED 42,900.000', width),
            cartSummaryRow('Discount', 'AED 8,900.000', width),
            cartSummaryRow('Other Charges', 'AED 1,900.000', width),
            cartSummaryRow('Total Price', 'AED 42,900.000', width),

            SizedBox(height: height * 0.03),

            // Checkout Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Screenaddress()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 38, 104),
                padding: EdgeInsets.symmetric(horizontal: width * 0.37, vertical: height * 0.015),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Checkout',
                style: TextStyle(fontSize: width * 0.045, color: Colors.white),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget cartItem(BuildContext context,
      {required String image,
      required String title,
      required String description,
      required String price,
      required String originalPrice}) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      height: 145,
      width: width * 0.95,
      color: Colors.white12,
      child: Row(
        children: [
          Container(
            height: 110,
            width: 120,
            child: Image.asset(image),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(title,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontFamily: 'Poppins')),
                      Spacer(),
                      Icon(Icons.delete, color: Colors.red, size: 20),
                    ],
                  ),
                  Text(description,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: 'Poppins')),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(price,
                          style: TextStyle(fontSize: 11, color: Colors.black)),
                      SizedBox(width: 5),
                      Text(originalPrice,
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.red,
                              fontSize: 8,
                              color: Colors.red)),
                      Spacer(),
                      itemCounter(),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget itemCounter() {
    return Row(
      children: [
        quantityButton('-', leftPadding: 9),
        SizedBox(width: 8),
        Text('1', style: TextStyle(fontSize: 10, fontFamily: 'Poppins')),
        SizedBox(width: 8),
        quantityButton('+', leftPadding: 9),
      ],
    );
  }

  Widget quantityButton(String text, {double leftPadding = 0}) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 229, 219, 219),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 3, left: leftPadding),
        child: Text(
          text,
          style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
        ),
      ),
    );
  }

  Widget cartSummaryRow(String label, String value, double width) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: 4),
      child: Row(
        children: [
          Text(label, style: TextStyle(fontSize: width * 0.042)),
          Spacer(),
          Text(value,
              style: TextStyle(fontSize: width * 0.04, fontFamily: 'Poppins')),
        ],
      ),
    );
  }
}
