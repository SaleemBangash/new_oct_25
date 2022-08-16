// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import '../main.dart';
import '../screens/new.dart';
import '../widgets/favourite.dart';
import '../widgets/plus.dart';
import '../drawer/Signin2.dart';

class Sprite extends StatefulWidget {
  Sprite({
    Key? key,
  }) : super(key: key);

  @override
  State<Sprite> createState() => _SpriteState();
}

class _SpriteState extends State<Sprite> {
  bool _type = false;

  bool _oneBeenPressed = false;
  bool _twoBeenPressed = false;
  bool _threeBeenPressed = false;
  bool _fourBeenPressed = false;
  bool _fiveBeenPressed = false;
  bool _sixBeenPressed = false;
  int _itemCount = 0;
  bool aChecked = false;
  bool bChecked = false;
  bool cChecked = false;
  bool dChecked = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      backgroundColor: Color(0xffF5ECE3),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "detail".toUpperCase(),
          style: TextStyle(fontSize: 17),
        ),
        actions: [Image.asset("assets/images/cart2.png")],
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => New())));
            },
            child: Image.asset("assets/images/back_errow.png")),
      ),
      body: Stack(
        children: [
          Stack(
            children: <Widget>[
              Image.asset(
                "assets/images/sheri-silver-7.png",
                width: width / 0.4,
                height: sizeConfig!.height(0.20),
                fit: BoxFit.fill,

                //fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                          backgroundColor: Colors.white, child: Favourite()),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: sizeConfig!.height(0.200),
            child: Container(
              height: sizeConfig!.height(0.120),
              decoration: BoxDecoration(
                color: Color(0xffFFF8F0),
                boxShadow: [
                  BoxShadow(
                    color:
                        Color(0xff00000029).withOpacity(0.5), //color of shadow
                    spreadRadius: 1, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "ICE Cream Cheesecake Mix",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    SizedBox(
                      width: 360,
                      child: Text(
                        "our signature ice cream is made of mil and full of fat with expresso. Pro Tip: enjoy it with requesting extra pump of sweet sauce.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffB1AEA9)),
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Text(
                      "20 SR",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Positioned(
            top: sizeConfig!.height(0.340),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _oneBeenPressed = !_oneBeenPressed;
                            _twoBeenPressed = false;
                            _threeBeenPressed = false;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          decoration: BoxDecoration(
                              border: _oneBeenPressed
                                  ? Border.all(
                                      //width: 2,
                                      color: Colors.black,
                                    )
                                  : Border.all(
                                      width: 0,
                                      color: Colors.white,
                                    ),
                              color: Color(0xffFFF8F0),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/images/splash_icon.png",
                                height: 40,
                                width: 40,
                              ),
                              Text(
                                "SMALL",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _twoBeenPressed = !_twoBeenPressed;
                            _oneBeenPressed = false;
                            _threeBeenPressed = false;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          decoration: BoxDecoration(
                              border: _twoBeenPressed
                                  ? Border.all(
                                      //width: 2,
                                      color: Colors.black,
                                    )
                                  : Border.all(
                                      width: 0,
                                      color: Colors.white,
                                    ),
                              color: Color(0xffFFF8F0),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/images/splash_icon.png",
                                height: 40,
                                width: 40,
                              ),
                              Text(
                                "MEDIUM",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _threeBeenPressed = !_threeBeenPressed;
                            _oneBeenPressed = false;
                            _twoBeenPressed = false;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 110,
                          decoration: BoxDecoration(
                              border: _threeBeenPressed
                                  ? Border.all(
                                      //width: 2,
                                      color: Colors.black,
                                    )
                                  : Border.all(
                                      width: 0,
                                      color: Colors.white,
                                    ),
                              color: Color(0xffFFF8F0),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/images/splash_icon.png",
                                height: 40,
                                width: 40,
                              ),
                              Text(
                                "LARGE",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "EXTRA ADDITION",
                    style: TextStyle(
                        fontSize: 13,
                        color: Color(0xffBAA378),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Container(
                    width: 370,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Color(0xffFFF8F0),
                        // border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _fourBeenPressed = !_fourBeenPressed;
                                      // _fiveBeenPressed = false;
                                      // _sixBeenPressed = false;
                                    });
                                  },
                                  child: _fourBeenPressed
                                      ? Image.asset(
                                          "assets/images/slection_slected.png",
                                          height: 25,
                                          width: 15,
                                        )
                                      : Image.asset(
                                          "assets/images/check2.png",
                                          height: 25,
                                          width: 15,
                                        ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'Extra Nuts',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffACACAC)),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: ' +1 SR',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 9,
                                            color: Color(0xffBAA378)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _fiveBeenPressed = !_fiveBeenPressed;
                                      // _fourBeenPressed = false;
                                      // _sixBeenPressed = false;
                                    });
                                  },
                                  child: _fiveBeenPressed
                                      ? Image.asset(
                                          "assets/images/slection_slected.png",
                                          height: 25,
                                          width: 15,
                                        )
                                      : Image.asset(
                                          "assets/images/check2.png",
                                          height: 25,
                                          width: 15,
                                        ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'Extra Nuts',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffACACAC)),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: ' +1 SR',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 9,
                                            color: Color(0xffBAA378)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _sixBeenPressed = !_sixBeenPressed;
                                      // _fiveBeenPressed = false;
                                      // _fourBeenPressed = false;
                                    });
                                  },
                                  child: _sixBeenPressed
                                      ? Image.asset(
                                          "assets/images/slection_slected.png",
                                          height: 25,
                                          width: 15,
                                        )
                                      : Image.asset(
                                          "assets/images/check2.png",
                                          height: 25,
                                          width: 15,
                                        ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'Extra Nuts',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffACACAC)),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: ' +1 SR',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 9,
                                            color: Color(0xffBAA378)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "Type of Milk",
                    style: TextStyle(
                        fontSize: 13,
                        color: Color(0xffBAA378),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Container(
                    width: 370,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xffFFF8F0),
                        // border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        shape: BoxShape.circle,
                                        color: Colors.transparent),
                                    child: Transform.scale(
                                      scale: 0.5,
                                      child: Checkbox(
                                        checkColor: Colors.black,
                                        side: BorderSide(color: Colors.white),
                                        activeColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        value: aChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            aChecked = value!;

                                            bChecked = false;
                                            cChecked = false;
                                            dChecked = false;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text("Type 1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffACACAC),
                                        fontSize: 11)),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        shape: BoxShape.circle,
                                        color: Colors.transparent),
                                    child: Transform.scale(
                                      scale: 0.6,
                                      child: Checkbox(
                                        checkColor: Colors.black,
                                        side: BorderSide(color: Colors.white),
                                        activeColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        value: bChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            bChecked = value!;

                                            aChecked = false;
                                            cChecked = false;
                                            dChecked = false;
                                            // eChecked = false;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text("Type 1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffACACAC),
                                        fontSize: 11)),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        shape: BoxShape.circle,
                                        color: Colors.transparent),
                                    child: Transform.scale(
                                      scale: 0.6,
                                      child: Checkbox(
                                        checkColor: Colors.black,
                                        side: BorderSide(color: Colors.white),
                                        activeColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        value: cChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            cChecked = value!;

                                            bChecked = false;
                                            aChecked = false;
                                            dChecked = false;
                                            // eChecked = false;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text("Type 1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffACACAC),
                                        fontSize: 11)),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        shape: BoxShape.circle,
                                        color: Colors.transparent),
                                    child: Transform.scale(
                                      scale: 0.6,
                                      child: Checkbox(
                                        checkColor: Colors.black,
                                        side: BorderSide(color: Colors.white),
                                        activeColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        value: dChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            dChecked = value!;

                                            bChecked = false;
                                            cChecked = false;
                                            aChecked = false;
                                            // eChecked = false;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text("Type 1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffACACAC),
                                        fontSize: 11)),
                              ],
                            ),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xffBAA378),
                    // border: Border.all(width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Plus(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => Signin2())));
                            },
                            child: Container(
                              height: 35,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Center(
                                child: Text(
                                  "ADD TO CART",
                                  style: TextStyle(
                                      // fontSize: text * 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_uvz71 =
    '<svg viewBox="193.0 333.0 176.6 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(193.0, 333.0)" d="M 11.04005432128906 0 L 165.600830078125 0 C 171.6980590820312 0 176.640869140625 3.581721782684326 176.640869140625 8 L 176.640869140625 35 C 176.640869140625 39.41827774047852 171.6980590820312 43 165.600830078125 43 L 11.04005432128906 43 C 4.942800998687744 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 4.942800998687744 0 11.04005432128906 0 Z" fill="#baa378" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_t4ec1q =
    '<svg viewBox="5.0 0.0 1.0 10.0" ><path transform="translate(-12.99, -7.5)" d="M 18 7.500000476837158 L 18 17.51696014404297" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_s0unte =
    '<svg viewBox="0.0 5.0 10.0 1.0" ><path transform="translate(-7.5, -12.99)" d="M 7.500000476837158 18 L 17.51696014404297 18" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_ggrqju =
    '<svg viewBox="287.5 27.5 12.7 1.0" ><path transform="translate(280.0, 9.5)" d="M 7.5 18 L 20.2078857421875 18" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_zi99uo =
    '<svg viewBox="9.0 0.0 1.0 18.0" ><path transform="translate(-8.99, -7.5)" d="M 18 7.5 L 18 25.525146484375" fill="none" stroke="#2a2a2a" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_jg5kzm =
    '<svg viewBox="0.0 9.0 18.0 1.0" ><path transform="translate(-7.5, -8.99)" d="M 7.5 18 L 25.525146484375 18" fill="none" stroke="#2a2a2a" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_d8li0 =
    '<svg viewBox="20.0 24.0 31.1 29.3" ><path transform="translate(14.38, 17.67)" d="M 33.98604965209961 18.15213394165039 L 15.10221576690674 18.15213394165039 L 22.42631912231445 11.14570140838623 C 23.47640228271484 10.04267406463623 23.47640228271484 8.260181427001953 22.42631912231445 7.157154083251953 C 21.37623596191406 6.054126739501953 19.67316055297852 6.054126739501953 18.61425399780273 7.157154083251953 L 6.419180393218994 18.98161125183105 C 5.889727115631104 19.49341583251953 5.625000476837158 20.19052886962891 5.625000476837158 20.95823669433594 L 5.625000476837158 20.9935359954834 C 5.625000476837158 21.76124382019043 5.889727115631104 22.45835494995117 6.419180393218994 22.97016143798828 L 18.60543060302734 34.79462051391602 C 19.66433715820312 35.89764785766602 21.36741256713867 35.89764785766602 22.4174919128418 34.79462051391602 C 23.46757507324219 33.69159317016602 23.46757507324219 31.90909767150879 22.4174919128418 30.80607032775879 L 15.09338855743408 23.79963874816895 L 33.97722244262695 23.79963874816895 C 35.4685173034668 23.79963874816895 36.67743301391602 22.53777694702148 36.67743301391602 20.97588920593262 C 36.68626022338867 19.38752365112305 35.47734069824219 18.15213394165039 33.98604965209961 18.15213394165039 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
