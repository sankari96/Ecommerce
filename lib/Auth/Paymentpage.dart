import 'package:debit_credit_card_widget/debit_credit_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:project1/Auth/Yourorder.dart';

class Paymentpage extends StatefulWidget {
  Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

class _PaymentpageState extends State<Paymentpage> {
  bool isLightTheme = false;
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  bool useFloatingAnimation = true;
  int values = 1;
  bool creditcardslow = false;
  bool creditcard = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.02),
                Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                        size: screenWidth * 0.06,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.25),
                    Text(
                      'Payment',
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  height: screenHeight * 0.13,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: screenHeight * 0.02),
                          Image.asset("assets/box.png", height: 30),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: screenHeight * 0.02),
                          Image.asset("assets/tick.png",
                              height: 24, color: Color(0xFF003C6E)),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: screenHeight * 0.02),
                          Image.asset("assets/card-tick.png",
                              height: 24, color: Color(0xFF003C6E)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.015),

                /// Credit Card Option
                InkWell(
                  onTap: () {
                    setState(() {
                      creditcardslow = !creditcardslow;
                    });
                  },
                  child: paymentOptionTile(
                    screenWidth,
                    title: 'Credit Card/Debit Card',
                    trailingIcon: Icons.arrow_forward_ios,
                  ),
                ),
                creditcardslow == true
                    ? DebitCreditCardWidget(
                        cardType: CardType
                            .credit, // CAN SET CARD TYPE AS DEBIT,CREDIT OR CUSTOM(FOR CUSTOM USE :- customCardType )
                        cardBrand: CardBrand
                            .mastercard, // CAN SET CARD BRAND (VISA,MASTERCARD,AMERICAN EXPRESS , DISCOVER, RUPAY OR CUSTOM(FOR CUSTOM USE :- cardBrandImage))
                        cardExpiry: "2140", // CARD EXPIRY DATE
                        color1: Colors.purple, // GRADIENT FIRST COLOR
                        showNFC: false, // BOOL TO SHOW OR HIDE NFC LOGO
                        cardNumber:
                            "1234123412341234", // CARD NUMBER ONLY 16 CHARACTERS
                        cardHolderName: "SIVASANKARI E", // CARD HOLDER NAME
                        backgroundDecorationImage: DecorationImage(
                            image: AssetImage(
                                "assets/images/background.png")), // YOU CAN ADD BACKGROUND IMAGE FROM HERE
                      )
                    : SizedBox(),
                SizedBox(height: screenHeight * 0.015),
                creditcardslow == true
                    ? DebitCreditCardWidget(
                        cardType: CardType
                            .debit, // CAN SET CARD TYPE AS DEBIT,CREDIT OR CUSTOM(FOR CUSTOM USE :- customCardType )
                        cardBrand: CardBrand
                            .mastercard, // CAN SET CARD BRAND (VISA,MASTERCARD,AMERICAN EXPRESS , DISCOVER, RUPAY OR CUSTOM(FOR CUSTOM USE :- cardBrandImage))
                        cardExpiry: "2140", // CARD EXPIRY DATE
                        color1: Colors.black, // GRADIENT FIRST COLOR
                        showNFC: false, // BOOL TO SHOW OR HIDE NFC LOGO
                        cardNumber:
                            "1234123412341234", // CARD NUMBER ONLY 16 CHARACTERS
                        cardHolderName: "SIVASANKARI E", // CARD HOLDER NAME
                        backgroundDecorationImage: DecorationImage(
                            image: AssetImage(
                                "assets/images/background.png")), // YOU CAN ADD BACKGROUND IMAGE FROM HERE
                      )
                    : SizedBox(),

                /// UPI Option
                paymentOptionTile(
                  screenWidth,
                  title: 'UPI',
                  trailingIcon: Icons.expand_more,
                  iconSize: screenWidth * 0.08,
                ),

                /// PhonePe Option
                upiRadioTile(
                  screenWidth,
                  imagePath: "assets/phopeimage.png",
                  label: 'PhonePay',
                  value: 1,
                ),

                /// Google Pay Option
                upiRadioTile(
                  screenWidth,
                  imagePath: "assets/googleimage.png",
                  label: 'Google Pay',
                  value: 2,
                ),

                /// UPI Option
                upiRadioTile(
                  screenWidth,
                  imagePath: "assets/upiimage.png",
                  label: 'Pay via upi',
                  value: 3,
                ),

                /// Net Banking
                paymentOptionTile(
                  screenWidth,
                  title: 'Net Banking',
                  trailingIcon: Icons.arrow_forward_ios,
                ),

                /// Cash on Delivery
                paymentOptionTile(
                  screenWidth,
                  title: 'Cash on delivery',
                  trailingIcon: Icons.arrow_forward_ios,
                ),

                SizedBox(height: screenHeight * 0.04),

                /// Pay Now Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Yourorder()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF002668),
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.37,
                      vertical: screenHeight * 0.015,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Pay now',
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget paymentOptionTile(double screenWidth,
      {required String title,
      required IconData trailingIcon,
      double iconSize = 20}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 50,
      width: double.infinity,
      color: Colors.white10,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: screenWidth * 0.038,
                color: Colors.black,
                fontFamily: 'Poppins'),
          ),
          Spacer(),
          Icon(
            trailingIcon,
            color: Colors.black,
            size: iconSize,
          ),
        ],
      ),
    );
  }

  Widget upiRadioTile(double screenWidth,
      {required String imagePath, required String label, required int value}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 50,
      width: double.infinity,
      color: Colors.white10,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Image.asset(imagePath, height: 30),
          SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: screenWidth * 0.038,
              color: Colors.black,
              fontFamily: 'Poppins',
            ),
          ),
          Spacer(),
          Radio(
            value: value,
            groupValue: values,
            onChanged: (val) {
              setState(() {
                values = val!;
              });
            },
            activeColor: Color(0xFF00447B),
          ),
        ],
      ),
    );
  }
}
