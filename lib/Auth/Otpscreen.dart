import 'package:flutter/material.dart';
import 'package:otp_timer_button/otp_timer_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:project1/Auth/Createregister.dart';
import 'package:project1/Auth/Registerscreen.dart';

class Otpscreen extends StatefulWidget {
  const Otpscreen({super.key});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _pinController = TextEditingController();

  String? validatePin(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter PIN code';
    } else if (value.length != 4) {
      return 'PIN must be exactly 4 digits';
    } else if (!RegExp(r'^[0-9]{4}\$').hasMatch(value)) {
      return 'PIN must contain only numbers';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height/10,
          
        ),
        Center(
          child: Image(
            image: AssetImage("assets/image1.png"),
            fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width/3,
            
          ),
        ),
        Text(
          'OTP Verification',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        Text(
          'OTP send to your\nE-mail',
          style: TextStyle(fontSize: 20, color: Colors.black),
          textAlign: TextAlign.center,
        ),SizedBox(height: MediaQuery.of(context).size.height/20,),
        PinCodeTextField(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          length: 4,
          obscureText: false,
          animationType: AnimationType.fade,
          pinTheme: PinTheme(
            inactiveFillColor: Colors.white,
            selectedFillColor: Colors.white,
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: MediaQuery.of(context).size.height/20,
            fieldWidth: MediaQuery.of(context).size.width/10,
            activeFillColor: Colors.white,
          ),
          animationDuration: Duration(milliseconds: 300),
          enableActiveFill: true,
          onCompleted: (v) {
            print("Completed");
          },
          onChanged: (value) {
            print(value);
            setState(() {});
          },
          beforeTextPaste: (text) {
            print("Allowing to paste $text");
            //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
            //but you can show anything you want here, like your pop up saying wrong paste format or etc
            return true;
          },
          appContext: context,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Did not receive a OTP?',style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 1, 76, 137)),),
            OtpTimerButton(
              height: MediaQuery.of(context).size.height/10,
              onPressed: () {},
              text: Text(
                'Resend OTP',
                style: TextStyle(fontSize: 15),
              ),
              buttonType: ButtonType.text_button,
              backgroundColor: Colors.blue,
              duration:20,
            ),
            
          ],
        ),
        Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Createregister  ()));
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
                'Submit',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
      ]),
    ));
  }
}
