import 'package:flutter/material.dart';
import 'package:project1/Auth/Homescreen.dart';
import 'package:project1/Auth/Loginscreen.dart';

class Createregister extends StatefulWidget {
  const Createregister({super.key});

  @override
  State<Createregister> createState() => _CreateregisterState();
}

class _CreateregisterState extends State<Createregister> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobilephoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 30,
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
               height: MediaQuery.of(context).size.height/80,
          width: MediaQuery.of(context).size.width/30,
            ),
            Text(
              'Name',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Form(
            key: _formkey,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
              ),
              Row(
                children: [
                  SizedBox(
                     height: MediaQuery.of(context).size.height/60,
          width: MediaQuery.of(context).size.width/30,

                   
                  ),
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Email"),
                  keyboardType: TextInputType.emailAddress,
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
              Row(
                children: [
                  SizedBox(
                     height: MediaQuery.of(context).size.height/60,
          width: MediaQuery.of(context).size.width/30,

                  ),
                  Text(
                    'Mobilephone',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: _mobilephoneController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Mobilephone"),
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
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height/60,
          width: MediaQuery.of(context).size.width/30,

                  ),
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Password"),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>Homescreen ()));
                },
                style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.height/6.8,
                  vertical:MediaQuery.of(context).size.width/120,),
                  backgroundColor: Color.fromARGB(255, 0, 38, 104),
                  
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Create account',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 2, 92, 247),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: InkWell(onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Loginscreen ()));
                },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Color.fromARGB(255, 2, 92, 247),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ]),
          ),
        ),
      ]),
    ));
  }
}
