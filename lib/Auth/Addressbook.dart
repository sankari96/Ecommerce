import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addressbook extends StatefulWidget {
  const Addressbook({super.key});

  @override
  State<Addressbook> createState() => _AddressbookState();
}

class _AddressbookState extends State<Addressbook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:SafeArea(child:  Column(children: [
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
                    width: 85,
                  ),
                  Text(
                    'Address book',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'Poppins'),
                  ),
                ],
              ),
            ),SizedBox(height: 30,),
            Padding(
                                      padding: EdgeInsets.only(left: 150),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 100),
                                    Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 20,
                                ),SizedBox(width: 5,),
                                          Text(
                                            'Add Address',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color.fromARGB(255, 2, 45, 80),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
              height: 165,
              width: 350,
              color: Colors.white12,
              child: Column(
                children: [
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
                        width: 270,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: 
                        Icon(
                          Icons.border_color_outlined,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                      Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 15,
                        ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
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
            ),SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                            Icon(
                            Icons.trip_origin_rounded,
                            color: Color.fromARGB(255, 0, 71, 130),
                            size: 20,
                          ),SizedBox(width: 5,),
                          Text(
                              'Set as Default Address',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: 'Poppins'),
                            ),
              
                ],
              ),
            ),

            Container(
              height: 165,
              width: 350,
              color: Colors.white12,
              child: Column(
                children: [
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
                        width: 270,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: 
                        Icon(
                          Icons.border_color_outlined,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                      Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 15,
                        ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
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
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                            Icon(
                            Icons.panorama_fish_eye_outlined,
                            color: Color.fromARGB(255, 0, 71, 130),
                            size: 20,
                          ),SizedBox(width: 5,),
                          Text(
                              'Set as Default Address',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: 'Poppins'),
                            ),
              
                ],
              ),
            ),


    ],),
    ),

    );
  }
}