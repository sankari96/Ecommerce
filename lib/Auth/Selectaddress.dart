import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project1/Auth/Summarypage.dart';

class Screenaddress extends StatefulWidget {
  const Screenaddress({super.key});

  @override
  State<Screenaddress> createState() => _ScreenaddressState();
}

class _ScreenaddressState extends State<Screenaddress> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobilephoneController = TextEditingController();
  final TextEditingController _flathousenobuildingController =
      TextEditingController();
  final TextEditingController _streetvillageController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
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
                    width: 85,
                  ),
                  Text(
                    'select address',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'Poppins'),
                  ),
                ],
              ),
            ),
            Container(
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
                    Container(
                      child: Column(
                        children: const [
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
                                color: Colors.grey,
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
                        children: const [
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
            Row(
              children: [
                SizedBox(
                  width: 250,
                ),
                Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 25,
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    // when raised button is pressed
                    // we display showModalBottomSheet
                    showModalBottomSheet<void>(
                      scrollControlDisabledMaxHeightRatio: double.infinity,
                      // context and builder are
                      // required properties in this widget
                      context: context,
                      builder: (BuildContext context) {
                        // we set up a container inside which
                        // we create center column and display text

                        // Returning SizedBox instead of a Container
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 130),
                                  child: Text(
                                    'Add Address',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                                SizedBox(width: 80),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.cancel_outlined,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'Name ',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black)),
                                        TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _nameController,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Name"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'Mobile Number ',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black)),
                                        TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _mobilephoneController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Mobilephone"),
                                keyboardType: TextInputType.phone,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your phone number';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'Flat / House no, Building',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black)),
                                        TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _flathousenobuildingController,
                                keyboardType: TextInputType.streetAddress,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Flat / House no, Building"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your flat house no,building';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'Street, Village',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black)),
                                        TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextFormField(
                                controller: _streetvillageController,
                                keyboardType: TextInputType.streetAddress,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Street, Village"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'street,village';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'Pincode',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black)),
                                        TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Pincode',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 50),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 0, 38, 104),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 145,
                                    vertical: 10,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Continue',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );

                    // RaisedButton is deprecated and should not be used
                    // Use ElevatedButton instead.

                    // child: RaisedButton(
                    //     child: const Text('showModalBottomSheet'),
                    //     onPressed: () {

                    //     // when raised button is pressed
                    //     // we display showModalBottomSheet
                    //     showModalBottomSheet<void>(

                    //         // context and builder are
                    //         // required properties in this widget
                    //         context: context,
                    //         builder: (BuildContext context) {

                    //         // we set up a container inside which
                    //         // we create center column and display text
                    //         return Container(
                    //             height: 200,
                    //             child: Center(
                    //             child: Column(
                    //                 mainAxisAlignment: MainAxisAlignment.center,
                    //                 children: <Widget>[
                    //                 const Text('GeeksforGeeks'),
                    //                 ],
                    //             ),
                    //             ),
                    //         );
                    //         },
                    //     );
                    //     },
                    // ),
                  },
                  child: Text(
                    'Add Address',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 1, 79, 143),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 165,
              width: 350,
              color: Colors.white12,
              child: Column(
                children: const [
                  Row(
                    children: [
                      Text(
                        'David',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins'),
                      ),
                      SizedBox(
                        width: 280,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Icon(
                          Icons.trip_origin,
                          color: Color.fromARGB(255, 0, 71, 130),
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2),
                        child: Text(
                          '+91 9876543210',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '112/B 2nd Floor,',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins-Black'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Northstreet,',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins-Black'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'chettikulam,Nagercoil-03',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins-Black'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'kanyakumari',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins-Black'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 165,
              width: 350,
              color: Colors.white12,
              child: Column(
                children: const [
                  Row(
                    children: [
                      Text(
                        'David',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins'),
                      ),
                      SizedBox(
                        width: 280,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Icon(
                          Icons.panorama_fish_eye_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 1,
                        ),
                        child: Text(
                          '+919876543210',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '112/B 2nd Floor,',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins-Black'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Northstreet,',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins-Black'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'chettikulam,Nagercoil-03',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins-Black'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'kanyakumari',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins-Black'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Summarypage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 38, 104),
                padding: EdgeInsets.symmetric(
                  horizontal: 140,
                  vertical: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
