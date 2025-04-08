import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  final TextEditingController _passwordController = TextEditingController();
   final TextEditingController _confirmpasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
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
                size: 30,
              ),
            ),
            SizedBox(
              width: 45,
            ),
          ],
        ),
      ),
      Text(
        'Set a new password',
        style:
            TextStyle(fontSize: 20, color: Colors.black, fontFamily: 'Poppins'),
      ),SizedBox( height:  MediaQuery.of(context).size.height/80,),
      Text(
        textAlign: TextAlign.center,
        'Create a new password.\n Ensure it differs fromprevious ones for security',
        style: TextStyle(
          fontSize: 12,
          color: Colors.black,
        ),
      ),
      SizedBox(height:  MediaQuery.of(context).size.height/70,),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Text(
              'Password',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(12),
        child: TextFormField(
          controller: _passwordController,
          obscureText: true,
          decoration: InputDecoration(border: OutlineInputBorder()),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter your password";
            } else if (value.length < 6) {
              return "Password must be at least 6 characters long";
            }
            return null;
          },
        ),
      ),
      SizedBox(height:  MediaQuery.of(context).size.height/70,),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Confirm Password',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(12),
        child: TextFormField(
          controller: _confirmpasswordController,
          obscureText: true,
          decoration: InputDecoration(border: OutlineInputBorder()),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter your password";
            } else if (value.length < 6) {
              return "Password must be at least 6 characters long";
            }
            return null;
          },
        ),
      ),SizedBox(height:  MediaQuery.of(context).size.height/20,),
      Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 38, 104),
                padding: EdgeInsets.symmetric(
                   horizontal:  MediaQuery.of(context).size.height/7.3,
                  vertical:MediaQuery.of(context).size.width/40,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Update Password',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
    ])));
  }
}
