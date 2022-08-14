// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

// import 'package:pin_entry_text_field/pin_entry_text_field.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';

// import '../widgets/app_bar.dart';
// import '../widgets/second_button.dart';
import '../../main.dart';

class Signin2 extends StatefulWidget {
  const Signin2({Key? key}) : super(key: key);

  @override
  State<Signin2> createState() => _Signin2State();
}

class _Signin2State extends State<Signin2> with TickerProviderStateMixin {
  int _counter = 0;
  late AnimationController _controller;
  int levelClock = 120;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: Duration(
            seconds:
                levelClock) // gameData.levelClock is a user entered number elsewhere in the applciation
        );

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5ECE3),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20, top: 30),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset("assets/images/cencel_icon.png")),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("OTP VERIFICATION",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                ),
                // Container(
                //   decoration:
                //       BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                //   child: OTPTextField(
                //     otpFieldStyle: OtpFieldStyle(
                //         backgroundColor: Color(0xffACACAC),
                //         borderColor: Color(0xff707070)),
                //     outlineBorderRadius: 30,
                //     length: 4,

                //     width: sizeConfig!.width(0.80),
                //     fieldWidth: sizeConfig!.width(0.15),
                //     style: TextStyle(
                //       fontSize: 20,
                //     ),
                //     textFieldAlignment: MainAxisAlignment.spaceEvenly,
                //     // fieldStyle: FieldStyle.underline,
                //     // onCompleted: (pin) {
                //     //   print("Completed: " + pin);
                //     // },
                //   ),
                // ),

                SizedBox(
                  height: 55,
                  child: OtpTextField(
                    filled: true,
                    fillColor: Color(0xFFACACAC0),
                    numberOfFields: 4,
                    borderColor: Color(0xFF707070),

                    fieldWidth: sizeConfig!.width(0.15),
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Verification Code"),
                              content:
                                  Text('Code entered is $verificationCode'),
                            );
                          });
                    }, // end onSubmit
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Countdown(
                      animation: StepTween(
                        begin: levelClock, // THIS IS A USER ENTERED NUMBER
                        end: 0,
                      ).animate(_controller),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 35,
                    width: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xff82C5B1)),
                    child: Center(
                        child: Text(
                      "verify".toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 12),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Don^t Recieve OTP?',
                                style: TextStyle(
                                    color: Color(0xffACACAC),
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: ' RESEND OTP',
                              style: TextStyle(
                                  color: Color(0xffBAA378),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Countdown extends AnimatedWidget {
  Countdown({Key? key, required this.animation})
      : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';

    print('animation.value  ${animation.value} ');
    print('inMinutes ${clockTimer.inMinutes.toString()}');
    print('inSeconds ${clockTimer.inSeconds.toString()}');
    print(
        'inSeconds.remainder ${clockTimer.inSeconds.remainder(60).toString()}');

    return Text(
      "$timerText",
      style: TextStyle(
        fontSize: 15,
        color: Colors.white,
      ),
    );
  }
}
