//
import 'dart:convert';
// Removed the problematic import
// import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:project1/Auth/Addressbook.dart';
import 'package:project1/Auth/Changepassword.dart';
import 'package:project1/Auth/Editprofile.dart';
import 'package:project1/Auth/Legalpage.dart';
import 'package:project1/Auth/Myorder.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  int _currentIndexs = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
                const SizedBox(width: 120),
                const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(130),
                  child: Container(
                    width: 70,
                    height: 70,
                    color: const Color.fromARGB(255, 0, 74, 134),
                    child: const Center(
                      child: Text(
                        "L",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Lorem ipsum",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Poppins',
                        )),
                    Text("xxxxxxxxxxx@mail.com",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Text("Personal Information",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(children: [
              Icon(
                Icons.edit_outlined,
                color: Colors.black,
                size: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
              ),
              InkWell(onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Editprofile()));
                },
                child: Text("Edit Profile",
                    style: TextStyle(
                      color: Color.fromARGB(231, 0, 0, 0),
                      fontSize: 17,
                      fontFamily: 'Poppins',
                    )),
              ),
              SizedBox(
                width: 173,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Editprofile()));
                },
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Color.fromARGB(231, 0, 0, 0),
                  size: 18,
                ),
              ),
            ]),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(children: [
              Icon(
                Icons.contact_page_outlined,
                color: Colors.black,
                size: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
              ),
              InkWell(onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Addressbook()));
                },
                child: Text("Address Book",
                    style: TextStyle(
                      color: Color.fromARGB(231, 0, 0, 0),
                      fontSize: 17,
                      fontFamily: 'Poppins',
                    )),
              ),
              SizedBox(
                width: 145,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Addressbook()));
                },
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 18,
                ),
              ),
            ]),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(children: [
               Container(height: 15,width: 15,
                        child: Image(image: AssetImage("assets/box.png"),color: Colors.black,),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)),
                      ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
              ),
              InkWell(onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Myorder()));
                },
                child: Text("Order Details",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Poppins',
                    )),
              ),
              SizedBox(
                width: 153,
              ),
              InkWell(onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Myorder()));
                },
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Color.fromARGB(231, 0, 0, 0),
                  size: 18,
                ),
              ),
            ]),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(children: [
              Icon(
                Icons.lock_outline,
                color: Colors.black,
                size: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
              ),
              InkWell(onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Changepassword()));
                },
                child: Text("Change Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Poppins',
                    )),
              ),
              SizedBox(
                width: 105,
              ),
              InkWell(onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Changepassword()));
                },
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Color.fromARGB(231, 0, 0, 0),
                  size: 18,
                ),
              ),
            ]),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(children: [
              Icon(
                Icons.logout,
                color: Colors.black,
                size: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
              ),
              InkWell(onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Legalpage()));
                },
                child: Text("Logout",
                    style: TextStyle(
                      color: Color.fromARGB(231, 0, 0, 0),
                      fontSize: 17,
                      fontFamily: 'Poppins',
                    )),
              ),
              SizedBox(
                width: 205,
              ),
              InkWell(onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Legalpage()));
                },
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 18,
                ),
              ),
            ]),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Color.fromARGB(255, 0, 74, 134),
        showInactiveTitle: true,
        selectedIndex: _currentIndexs,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        itemCornerRadius: 24,
        iconSize: 20,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndexs = index),
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
            icon: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profilepage()));
                },
                child: Icon(Icons.person, color: Colors.white)),
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
