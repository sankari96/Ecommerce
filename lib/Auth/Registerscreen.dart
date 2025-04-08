import 'package:flutter/material.dart';
import 'package:project1/Auth/Otpscreen.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height/8,
        ),
        Image(
          image: AssetImage("assets/image1.png"),
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width/3,
        ),
        Text(
          'Register',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        Text(
          'Welcome back!\nPlease enter your details',
          style: TextStyle(fontSize: 20, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width/22,
            ),
            Column(
              children: [
                SizedBox(
                  height:  MediaQuery.of(context).size.height/60,
                ),
                Text(
                  'E-mail',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(2),
          child: Form(
            key: _formkey,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    } else if (!RegExp(
                            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                        .hasMatch(value)) {
                      return "Please enter a valid email";
                    }
                    return null;
                  },
                ),
              ),
            ]),
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Otpscreen()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 0, 50, 138),
              
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Get OTP',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Already have an account",
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 92, 247),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Color.fromARGB(255, 2, 92, 247),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    ));
  }
}
