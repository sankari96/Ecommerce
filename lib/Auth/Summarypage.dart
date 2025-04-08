import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Auth/Paymentpage.dart';

class Summarypage extends StatefulWidget {
  const Summarypage({super.key});

  @override
  State<Summarypage> createState() => _SummarypageState();
}

class _SummarypageState extends State<Summarypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(15),
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
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    'Summary',
                    style: TextStyle(
                        fontSize: 20, color: Colors.black, fontFamily: 'Poppins'),
                  ),
                ],
              ),
            ),Container(
              height: 100,
              width: 330,
              color: Colors.white12,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Column(children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Image(image: AssetImage("assets/box.png")),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Text(
                        'Address',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 0, 60, 110),
                            fontFamily: 'Poppins'),
                      ),
                    ]),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(child: Text(
                          '-----',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 0, 60, 110),
                              fontFamily: 'Poppins'),
                        ),),
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image(
                            image: AssetImage(
                              "assets/tick.png",
                            ),
                            height: 24,
                          ),
                          Text(
                            'Summary',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 0, 60, 110),
                                fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image(
                            image: AssetImage(
                              "assets/card-tick.png",
                            ),
                            height: 24,
                          ),
                          Text(
                            'Payment',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
            height: 145,
            width: 380,
            color: Colors.white12,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 110,
                  width: 120,
                  child: Image(image: AssetImage("assets/gp3.png")),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Galaxy M33',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(width: 130),
                          Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '(4GB | 64 GB )',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontFamily: 'Poppins'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Row(
                          children: [
                            Text(
                              'AED 42900',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'AED74999',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.red,
                                fontSize: 8,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 229, 219, 219),
                                  border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 5,
                                  top: 0.1,
                                  left: 9,
                                ),
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Poppies',
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppies',
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 229, 219, 219),
                                  border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 3, left: 9),
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Poppies',
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 145,
            width: 380,
            color: Colors.white12,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 110,
                  width: 120,
                  child: Image(image: AssetImage("assets/gp2.png")),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Galaxy M33',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(width: 130),
                          Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '(4GB | 64 GB )',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontFamily: 'Poppins'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Row(
                          children: [
                            Text(
                              'AED 42900',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'AED74999',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.red,
                                fontSize: 8,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 229, 219, 219),
                                  border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 5,
                                  top: 0.1,
                                  left: 9,
                                ),
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Poppies',
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppies',
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 229, 219, 219),
                                  border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 3, left: 9),
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Poppies',
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order Details',
                  style: TextStyle(
                      fontSize: 18, fontFamily: 'Poppins', color: Colors.black),
                ),
              ],
            ),
          ),SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cart Total',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                SizedBox(
                  width: 140,
                ),
                Column(
                  children: [
                    Text(
                      'AED 42,900.000',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 20),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discount',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                SizedBox(
                  width: 158,
                ),
                Column(
                  children: [
                    Text(
                      'AED 8,900.000',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Other Charges',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                SizedBox(
                  width: 117,
                ),
                Column(
                  children: [
                    Text(
                      'AED 1,900.000',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Price',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                SizedBox(
                  width: 133,
                ),
                Column(
                  children: [
                    Text(
                      'AED 42,900.000',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    
                  ],
                ),
              ],
            ),
          ),SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left:20),
            child: Row(
              children: [
                Text(
                  'Shipping Address',
                  style: TextStyle(
                      fontSize: 18, fontFamily: 'Poppins', color: Colors.black),
                ),SizedBox(width: 120,),
                Text(
                  'Change',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 1, 86, 156)),
                ),
              ],
            ),
          ),SizedBox(height: 10,),
          Container(
              height: 165,
              width: 350,
              color: Colors.white12,
              child: Padding(
                padding: const EdgeInsets.only(right: 0.5),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:0.0),
                          child: Text(
                            'David',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                        ),SizedBox(width: 280,),
                        
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '+919876543210',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),SizedBox(height: 10,),
                    Text(
                      '112/B 2nd Floor,',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: 'Poppins-Black'),
                    ),
                    Text(
                      'Northstreet,',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: 'Poppins-Black'),
                    ),
                    Text(
                      'chettikulam,Nagercoil-03',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: 'Poppins-Black'),
                    ),
                    Text(
                      'kanyakumari',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: 'Poppins-Black'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height:5,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 70),
                      child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Paymentpage()));
                                      
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromARGB(255, 0, 38, 104),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 110,
                                        vertical: 8,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      'Proceed Payment',
                                      style: TextStyle(fontSize: 18, color: Colors.white),
                                    ),
                                  ),
                    ),

          


            
          ]),
        ),
      ),
    );
  }
}
