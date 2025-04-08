import 'package:flutter/material.dart';

class Exmplefile extends StatefulWidget {
  const Exmplefile({super.key});

  @override
  State<Exmplefile> createState() => _ExmplefileState();
}

class _ExmplefileState extends State<Exmplefile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextButton(
            onPressed: () {},
            child: Text(
              "Text Button",
              style: TextStyle(
                color: Colors.green,
              ),
            )),
      ],
        
      ),
    );
  }
}
