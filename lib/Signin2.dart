// ignore: file_names
// ignore_for_file: file_names, prefer_const_constructors, unnecessary_new

//import 'dart:js';
//import 'package:sizer/sizer.dart';
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
//import 'package:newoct/component32.dart';
import './Register1.dart';
import 'package:adobe_xd/page_link.dart';
import './Home.dart';
import './Component31.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'component32.dart';

class Signin2 extends StatefulWidget {
  Signin2({
    Key? key,
  }) : super(key: key);

  @override
  State<Signin2> createState() => _Signin2State();
}

class _Signin2State extends State<Signin2> {
  bool isChecked = false;
  bool onChecked = false;
  bool ifChecked = false;
  bool iChecked = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      backgroundColor: const Color(0xfffdfdfd),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 270, top: 10),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Home(),
                ),
              ],
              child: CircleAvatar(
                  backgroundColor: Color(0xffbaa378),
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                "25OCT",
                style: TextStyle(
                    fontSize: text * 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffbaa378)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
                child: Text(
              "SignIn",
              style: TextStyle(
                  fontSize: text * 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffbaa378)),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Phone",
                      hintStyle: TextStyle(fontSize: 20),
                      prefixIcon: Icon(
                        Icons.call,
                        size: 35,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                          onChecked = false;
                        });
                      },
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'You are Agreeing To Our',
                          style: TextStyle(
                              color: Colors.black, fontSize: text * 15),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Terms and Policies',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: text * 15,
                                  fontWeight: FontWeight.bold),
                              // recognizer: TapGestureRecognizer()
                              //   ..onTap = () {
                              //     // navigate to desired screen
                              //   }
                            )
                          ]),
                    ),
                  ],
                ),
                ElevatedButton(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: text * 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),

                      //StadiumBorder(),
                      // side: BorderSide(width: 6),
                      minimumSize: Size(220, 40),
                      backgroundColor: Color(0xffbaa378)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20.0)), //this right here
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border:
                                    Border.all(width: 3, color: Colors.black),
                              ),
                              height: height / 3.5,
                              //width: width / 3,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 40),
                                          child: Text(
                                            "Verify your Number",
                                            style: TextStyle(
                                                fontSize: text * 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.close,
                                          ),
                                          iconSize: 30,
                                          color: Colors.black,
                                          splashColor: Colors.purple,
                                          onPressed: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Signin2())),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 20, right: 20),
                                      child: new Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          // SizedBox(
                                          //   width: 10.0,
                                          // ),
                                          new Flexible(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, right: 10),
                                              child: Container(
                                                height: height / 19,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffbaa378)
                                                        .withOpacity(0.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                child: new TextField(
                                                    style: TextStyle(
                                                        fontSize: text * 25),
                                                    textAlign: TextAlign.center,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    //controller: this.code,
                                                    maxLength: 1,
                                                    cursorColor:
                                                        Theme.of(context)
                                                            .primaryColor,
                                                    decoration: InputDecoration(
                                                        hintText: "*",
                                                        counterText: '',
                                                        border: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16)),
                                                        // labelText: "Email"

                                                        hintStyle: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 20.0))),
                                              ),
                                            ),
                                          ),
                                          // SizedBox(
                                          //   width: 10.0,
                                          // ),
                                          new Flexible(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: height / 19,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffbaa378)
                                                        .withOpacity(0.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                child: new TextField(
                                                    style: TextStyle(
                                                        fontSize: text * 25),
                                                    textAlign: TextAlign.center,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    //controller: this.code,
                                                    maxLength: 1,
                                                    cursorColor:
                                                        Theme.of(context)
                                                            .primaryColor,
                                                    decoration: InputDecoration(
                                                        hintText: "*",
                                                        counterText: '',
                                                        border: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16)),
                                                        // labelText: "Email"

                                                        hintStyle: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 20.0))),
                                              ),
                                            ),
                                          ),
                                          // SizedBox(
                                          //   width: 10.0,
                                          // ),
                                          new Flexible(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: height / 19,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffbaa378)
                                                        .withOpacity(0.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                child: new TextField(
                                                    style: TextStyle(
                                                        fontSize: text * 25),
                                                    textAlign: TextAlign.center,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    //controller: this.code,
                                                    maxLength: 1,
                                                    cursorColor:
                                                        Theme.of(context)
                                                            .primaryColor,
                                                    decoration: InputDecoration(
                                                        hintText: "*",
                                                        counterText: '',
                                                        border: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16)),
                                                        // labelText: "Email"

                                                        hintStyle: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 20.0))),
                                              ),
                                            ),
                                          ),
                                          // SizedBox(
                                          //   width: 10.0,
                                          //),
                                          new Flexible(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: height / 19,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffbaa378)
                                                        .withOpacity(0.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                child: new TextField(
                                                    style: TextStyle(
                                                        fontSize: text * 25),
                                                    textAlign: TextAlign.center,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    //controller: this.code,
                                                    maxLength: 1,
                                                    cursorColor:
                                                        Theme.of(context)
                                                            .primaryColor,
                                                    decoration: InputDecoration(
                                                        hintText: "*",
                                                        counterText: '',
                                                        border: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16)),
                                                        // labelText: "Email"

                                                        hintStyle: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 20.0))),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: ElevatedButton(
                                          child: Text(
                                            "verify",
                                            style: TextStyle(
                                                fontSize: text * 18,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          style: TextButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),

                                              //StadiumBorder(),
                                              // side: BorderSide(width: 6),
                                              minimumSize: Size(150, 40),
                                              backgroundColor:
                                                  Color(0xffbaa378)),
                                          onPressed: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Signin2()))),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

const String _svg_b0p366 =
    '<svg viewBox="23.0 762.7 414.0 218.3" ><path  d="M 437 762.7349853515625 C 391.1549987792969 807.4669799804688 312.2049865722656 837 222.5 837 C 141.9230041503906 837 70.02369689941406 813.1719970703125 23 775.9039916992188 L 23 981 L 437 981 L 437 762.7349853515625 Z" fill="#2a2a2a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i7b1yq =
    '<svg viewBox="52.5 386.6 316.0 1.0" ><path transform="translate(52.5, 386.61)" d="M 0 0 L 316 0" fill="none" stroke="#2a2a2a" stroke-width="1" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_m884lw =
    '<svg viewBox="139.5 306.6 69.0 1.0" ><path transform="translate(139.5, 306.61)" d="M 0 0 L 69 0" fill="none" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ok6ez1 =
    '<svg viewBox="388.2 24.0 26.2 26.2" ><path transform="translate(376.96, 12.71)" d="M 27.51280212402344 24.40407180786133 L 36.88388824462891 15.03298568725586 C 37.73580932617188 14.18106651306152 37.73580932617188 12.77952766418457 36.88388824462891 11.92761039733887 C 36.0319709777832 11.07569122314453 34.63043212890625 11.07569122314453 33.77851486206055 11.92761039733887 L 24.40742874145508 21.29869842529297 L 15.03634166717529 11.9276123046875 C 14.18442249298096 11.07569313049316 12.782883644104 11.07569313049316 11.9309663772583 11.9276123046875 C 11.50500774383545 12.35357093811035 11.28515720367432 12.91693496704102 11.28515720367432 13.48029899597168 C 11.28515720367432 14.04366302490234 11.50500774383545 14.60702705383301 11.9309663772583 15.03298568725586 L 21.30205154418945 24.40407180786133 L 11.93096446990967 33.7751579284668 C 11.50500583648682 34.20111846923828 11.28515529632568 34.76448440551758 11.28515529632568 35.32784652709961 C 11.28515529632568 35.89120864868164 11.50500583648682 36.45457458496094 11.93096446990967 36.88053131103516 C 12.78288173675537 37.73245239257812 14.18442058563232 37.73245239257812 15.03633975982666 36.88053131103516 L 24.40742492675781 27.50944519042969 L 33.77851486206055 36.88053131103516 C 34.63043212890625 37.73245239257812 36.0319709777832 37.73245239257812 36.88388442993164 36.88053131103516 C 37.73580551147461 36.02861404418945 37.73580551147461 34.6270751953125 36.88388442993164 33.7751579284668 L 27.51280212402344 24.40407180786133 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lbt6v3 =
    '<svg viewBox="54.0 356.5 20.4 20.5" ><path transform="translate(50.83, 353.5)" d="M 23.58370971679688 18.31588554382324 L 23.58370971679688 21.3954963684082 C 23.58605575561523 21.97358703613281 23.34457588195801 22.52587699890137 22.91859436035156 22.91668510437012 C 22.49261093139648 23.3074951171875 21.92160606384277 23.50060081481934 21.34585762023926 23.44857025146484 C 18.18703651428223 23.1053352355957 15.15276336669922 22.02593994140625 12.48684883117676 20.2971019744873 C 10.00655937194824 18.72102355957031 7.903703689575195 16.6181697845459 6.327622413635254 14.13787841796875 C 4.592752933502197 11.45985221862793 3.513108015060425 8.410821914672852 3.176154136657715 5.237799644470215 C 3.124287843704224 4.663836002349854 3.316044330596924 4.094499111175537 3.704581737518311 3.668865442276001 C 4.093119621276855 3.243231773376465 4.642659664154053 3.00049614906311 5.218963146209717 2.999953269958496 L 8.29857349395752 2.999953269958496 C 9.329076766967773 2.989811182022095 10.20742034912109 3.74518609046936 10.35164833068848 4.765597343444824 C 10.48163032531738 5.751143455505371 10.72268676757812 6.718818664550781 11.07022285461426 7.650168895721436 C 11.35224723815918 8.40043830871582 11.17186546325684 9.246232986450195 10.6082820892334 9.816160202026367 L 9.304580688476562 11.11986064910889 C 10.76591491699219 13.68984508514404 12.89382362365723 15.81775093078613 15.46380805969238 17.27908515930176 L 16.76750373840332 15.97538089752197 C 17.33743286132812 15.41179752349854 18.1832275390625 15.23141574859619 18.93349838256836 15.51344203948975 C 19.86484909057617 15.86097812652588 20.8325252532959 16.10203552246094 21.81806945800781 16.23201751708984 C 22.85031509399414 16.37764549255371 23.60956764221191 17.27374076843262 23.58370971679688 18.31588745117188 Z" fill="none" stroke="#2a2a2a" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
