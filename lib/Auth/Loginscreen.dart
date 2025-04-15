 
import 'package:flutter/material.dart';
import 'package:project1/Auth/Forgetpassword.dart';
import 'package:project1/Auth/Homescreen.dart';
import 'package:project1/Auth/Otpscreen.dart';
import 'package:project1/Auth/Registerscreen.dart';


class Loginscreen extends StatefulWidget { 
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/10,
          ),
          Image(
            image: AssetImage("assets/image1.png"),
            fit: BoxFit.cover,
            height:  MediaQuery.of(context).size.height/5,
            width:  MediaQuery.of(context).size.width/3,
          ),
          Text(
            'Login',
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
                width:  MediaQuery.of(context).size.width/25,
              ),
              Column(
                children: [
                  SizedBox(
                    height:  MediaQuery.of(context).size.height/30,
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
              child: Column(
                children: [
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
                  SizedBox(height:  MediaQuery.of(context).size.height/80,),
                  Row(
                    children: [SizedBox(width:  MediaQuery.of(context).size.width/30,),
                      Text(
                        'Password',
                        style: TextStyle(fontSize: 20, color: Colors.black),
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
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: InkWell(
                    onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Forgetpassword()));
                },
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 65, 179),
                      ),
                    ),
                  )),
            ],
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                 Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homescreen()));
                
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 38, 104),
                padding: EdgeInsets.symmetric(
                   horizontal:  MediaQuery.of(context).size.height/5.2,
                  vertical:MediaQuery.of(context).size.width/40,
                  
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Don't have an account?",
              style: TextStyle(
                color: Color.fromARGB(255, 2, 92, 247),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Registerscreen()));

                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color.fromARGB(255, 2, 92, 247),
                    ),
                  ),
                  
                ),
              ],
            ),
          ]),
        ]),
      ),
    );
  }
}
