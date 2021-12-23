// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, unnecessary_new
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:new_oct_25/bottomsheet.dart';
import 'package:new_oct_25/favourite.dart';
import './Home.dart';
import 'package:adobe_xd/page_link.dart';

import './Cart.dart';
// import './Iconawesomeheart.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:favorite_button/favorite_button.dart';

class Wishlist extends StatefulWidget {
  Wishlist({
    Key? key,
  }) : super(key: key);

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  int _currentIndex = 2;
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
        backgroundColor: const Color(0xfffdfdfd),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 290, top: 10),
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => Home(),
                  ),
                ],
                // ignore: prefer_const_constructors
                child: CircleAvatar(
                    backgroundColor: Color(0xffbaa378),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    )),
              ),
            ),
            Center(
              child: Text(
                "25OCT",
                style: TextStyle(
                    fontSize: text * 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Your Favourite",
                style: TextStyle(
                    fontSize: text * 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: height / 5.8,
                    width: width / 1,
                    decoration: BoxDecoration(
                        border: Border.all(
                          //width: 2,
                          color: Colors.black,
                        ),
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(16)),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Image.asset(
                                  "assets/images/sheri-silver-1.png",
                                  width: width / 3.5,
                                  height: height / 6,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, top: 20),
                          child: Row(
                            children: [
                              Text(
                                "Vanilla Flavor",
                                style: TextStyle(fontSize: text * 17),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 290, top: 10),
                          child: Favourite(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, top: 50),
                          child: Text(
                            "20.00SR",
                            style: TextStyle(fontSize: text * 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 160, top: 80),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.delete_outline_rounded,
                                  size: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: ElevatedButton(
                                  child: Text(
                                    "Add to Cart",
                                    style: TextStyle(
                                        fontSize: text * 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)),

                                      //StadiumBorder(),
                                      // side: BorderSide(width: 6),
                                      minimumSize: Size(60, 30),
                                      maximumSize: Size(120, 30),
                                      backgroundColor: Color(0xffbaa378)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Cart()));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: height / 5.8,
                    width: width / 1,
                    decoration: BoxDecoration(
                        border: Border.all(
                          //width: 2,
                          color: Colors.black,
                        ),
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(16)),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Image.asset(
                                  "assets/images/sheri-silver-1.png",
                                  width: width / 3.5,
                                  height: height / 6,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, top: 20),
                          child: Row(
                            children: [
                              Text(
                                "Vanilla Flavor",
                                style: TextStyle(fontSize: text * 17),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 290, top: 10),
                          child: Favourite(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, top: 50),
                          child: Text(
                            "20.00SR",
                            style: TextStyle(fontSize: text * 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 160, top: 80),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.delete_outline_rounded,
                                  size: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: ElevatedButton(
                                  child: Text(
                                    "Add to Cart",
                                    style: TextStyle(
                                        fontSize: text * 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)),

                                      //StadiumBorder(),
                                      minimumSize: Size(60, 30),
                                      maximumSize: Size(120, 30),
                                      backgroundColor: Color(0xffbaa378)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Cart()));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: height / 5.8,
                    width: width / 1,
                    decoration: BoxDecoration(
                        border: Border.all(
                          //width: 2,
                          color: Colors.black,
                        ),
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(16)),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Image.asset(
                                  "assets/images/sheri-silver-1.png",
                                  width: width / 3.5,
                                  height: height / 6,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, top: 20),
                          child: Row(
                            children: [
                              Text(
                                "Vanilla Flavor",
                                style: TextStyle(fontSize: text * 17),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 290, top: 10),
                          child: Favourite(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, top: 50),
                          child: Text(
                            "20.00SR",
                            style: TextStyle(fontSize: text * 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 160, top: 80),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.delete_outline_rounded,
                                  size: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: ElevatedButton(
                                  child: Text(
                                    "Add to Cart",
                                    style: TextStyle(
                                        fontSize: text * 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)),

                                      //StadiumBorder(),
                                      // side: BorderSide(width: 6),
                                      minimumSize: Size(60, 30),
                                      maximumSize: Size(120, 30),
                                      backgroundColor: Color(0xffbaa378)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Cart()));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: Bottomsheet());
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

const String _svg_g7czog =
    '<svg viewBox="14.0 50.0 31.1 29.3" ><path transform="translate(8.38, 43.67)" d="M 33.98604965209961 18.15213394165039 L 15.10221576690674 18.15213394165039 L 22.42631912231445 11.14570140838623 C 23.47640228271484 10.04267406463623 23.47640228271484 8.260181427001953 22.42631912231445 7.157154083251953 C 21.37623596191406 6.054126739501953 19.67316055297852 6.054126739501953 18.61425399780273 7.157154083251953 L 6.419180393218994 18.98161125183105 C 5.889727115631104 19.49341583251953 5.625000476837158 20.19052886962891 5.625000476837158 20.95823669433594 L 5.625000476837158 20.9935359954834 C 5.625000476837158 21.76124382019043 5.889727115631104 22.45835494995117 6.419180393218994 22.97016143798828 L 18.60543060302734 34.79462051391602 C 19.66433715820312 35.89764785766602 21.36741256713867 35.89764785766602 22.4174919128418 34.79462051391602 C 23.46757507324219 33.69159317016602 23.46757507324219 31.90909767150879 22.4174919128418 30.80607032775879 L 15.09338855743408 23.79963874816895 L 33.97722244262695 23.79963874816895 C 35.4685173034668 23.79963874816895 36.67743301391602 22.53777694702148 36.67743301391602 20.97588920593262 C 36.68626022338867 19.38752365112305 35.47734069824219 18.15213394165039 33.98604965209961 18.15213394165039 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wodaxz =
    '<svg viewBox="36.0 162.0 355.0 126.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="4" stdDeviation="9"/></filter></defs><path transform="translate(36.0, 162.0)" d="M 10 0 L 345 0 C 350.5228576660156 0 355 4.477152347564697 355 10 L 355 116 C 355 121.5228500366211 350.5228576660156 126 345 126 L 10 126 C 4.477152347564697 126 0 121.5228500366211 0 116 L 0 10 C 0 4.477152347564697 4.477152347564697 0 10 0 Z" fill="#eeeeee" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_q2ayjb =
    '<svg viewBox="37.0 306.0 355.0 126.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="4" stdDeviation="9"/></filter></defs><path transform="translate(37.0, 306.0)" d="M 10 0 L 345 0 C 350.5228576660156 0 355 4.477152347564697 355 10 L 355 116 C 355 121.5228500366211 350.5228576660156 126 345 126 L 10 126 C 4.477152347564697 126 0 121.5228500366211 0 116 L 0 10 C 0 4.477152347564697 4.477152347564697 0 10 0 Z" fill="#eeeeee" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_eejrqh =
    '<svg viewBox="37.0 450.0 355.0 126.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="4" stdDeviation="9"/></filter></defs><path transform="translate(37.0, 450.0)" d="M 10 0 L 345 0 C 350.5228576660156 0 355 4.477152347564697 355 10 L 355 116 C 355 121.5228500366211 350.5228576660156 126 345 126 L 10 126 C 4.477152347564697 126 0 121.5228500366211 0 116 L 0 10 C 0 4.477152347564697 4.477152347564697 0 10 0 Z" fill="#eeeeee" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_jx53d2 =
    '<svg viewBox="279.0 232.0 106.0 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(279.0, 232.0)" d="M 6.627805709838867 0 L 99.41708374023438 0 C 103.077522277832 0 106.0448913574219 3.581721782684326 106.0448913574219 8 L 106.0448913574219 35 C 106.0448913574219 39.41827774047852 103.077522277832 43 99.41708374023438 43 L 6.627805709838867 43 C 2.967369556427002 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 2.967369556427002 0 6.627805709838867 0 Z" fill="#baa378" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_uzq31i =
    '<svg viewBox="280.0 376.0 106.0 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(280.0, 376.0)" d="M 6.627805709838867 0 L 99.41708374023438 0 C 103.077522277832 0 106.0448913574219 3.581721782684326 106.0448913574219 8 L 106.0448913574219 35 C 106.0448913574219 39.41827774047852 103.077522277832 43 99.41708374023438 43 L 6.627805709838867 43 C 2.967369556427002 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 2.967369556427002 0 6.627805709838867 0 Z" fill="#baa378" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_vpazbu =
    '<svg viewBox="280.0 520.0 106.0 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(280.0, 520.0)" d="M 6.627805709838867 0 L 99.41708374023438 0 C 103.077522277832 0 106.0448913574219 3.581721782684326 106.0448913574219 8 L 106.0448913574219 35 C 106.0448913574219 39.41827774047852 103.077522277832 43 99.41708374023438 43 L 6.627805709838867 43 C 2.967369556427002 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 2.967369556427002 0 6.627805709838867 0 Z" fill="#baa378" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_o439 =
    '<svg viewBox="167.0 232.0 106.0 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(167.0, 232.0)" d="M 6.627805709838867 0 L 99.41708374023438 0 C 103.077522277832 0 106.0448913574219 3.581721782684326 106.0448913574219 8 L 106.0448913574219 35 C 106.0448913574219 39.41827774047852 103.077522277832 43 99.41708374023438 43 L 6.627805709838867 43 C 2.967369556427002 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 2.967369556427002 0 6.627805709838867 0 Z" fill="#ffd700" fill-opacity="0.0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_z2h =
    '<svg viewBox="168.0 376.0 106.0 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(168.0, 376.0)" d="M 6.627805709838867 0 L 99.41708374023438 0 C 103.077522277832 0 106.0448913574219 3.581721782684326 106.0448913574219 8 L 106.0448913574219 35 C 106.0448913574219 39.41827774047852 103.077522277832 43 99.41708374023438 43 L 6.627805709838867 43 C 2.967369556427002 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 2.967369556427002 0 6.627805709838867 0 Z" fill="#ffd700" fill-opacity="0.0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_qorb2h =
    '<svg viewBox="168.0 520.0 106.0 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(168.0, 520.0)" d="M 6.627805709838867 0 L 99.41708374023438 0 C 103.077522277832 0 106.0448913574219 3.581721782684326 106.0448913574219 8 L 106.0448913574219 35 C 106.0448913574219 39.41827774047852 103.077522277832 43 99.41708374023438 43 L 6.627805709838867 43 C 2.967369556427002 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 2.967369556427002 0 6.627805709838867 0 Z" fill="#ffd700" fill-opacity="0.0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ob0a0d =
    '<svg viewBox="3.0 2.0 33.2 36.9" ><path transform="translate(0.0, 0.0)" d="M 3 14.92647266387939 L 19.6197509765625 1.999999642372131 L 36.23949813842773 14.92647266387939 L 36.23949813842773 35.23949813842773 C 36.23949813842773 36.21895599365234 35.85041427612305 37.15834045410156 35.15773773193359 37.85101318359375 C 34.46506500244141 38.5436897277832 33.52567672729492 38.93277740478516 32.54621887207031 38.93277740478516 L 6.693277359008789 38.93277740478516 C 5.713765621185303 38.93277740478516 4.774361133575439 38.5436897277832 4.081742286682129 37.85101318359375 C 3.389105319976807 37.15834045410156 3 36.21895599365234 3 35.23949813842773 L 3 14.92647266387939 Z" fill="none" stroke="#2a2a2a" stroke-width="4" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_hcv6ir =
    '<svg viewBox="14.1 20.5 11.1 18.5" ><path transform="translate(5.08, 8.47)" d="M 9 30.46638870239258 L 9 12 L 20.079833984375 12 L 20.079833984375 30.46638870239258" fill="none" stroke="#2a2a2a" stroke-width="4" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_u51o =
    '<svg viewBox="13.1 33.0 3.3 3.3" ><path transform="translate(1.12, 3.03)" d="M 15.31882667541504 31.6594123840332 C 15.31882667541504 32.57588195800781 14.57588195800781 33.31882476806641 13.6594123840332 33.31882476806641 C 12.74294471740723 33.31882476806641 12 32.57588195800781 12 31.6594123840332 C 12 30.74294662475586 12.74294471740723 30 13.6594123840332 30 C 14.57588195800781 30 15.31882667541504 30.74294662475586 15.31882667541504 31.6594123840332 Z" fill="none" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_p2w3cf =
    '<svg viewBox="31.4 33.0 3.3 3.3" ><path transform="translate(2.87, 3.03)" d="M 31.81882858276367 31.6594123840332 C 31.81882858276367 32.57588195800781 31.07588195800781 33.31882476806641 30.15941619873047 33.31882476806641 C 29.24295043945312 33.31882476806641 28.50000381469727 32.57588195800781 28.50000381469727 31.6594123840332 C 28.50000381469727 30.74294662475586 29.24295043945312 30 30.15941619873047 30 C 31.07588195800781 30 31.81882858276367 30.74294662475586 31.81882858276367 31.6594123840332 Z" fill="none" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_wn3ln7 =
    '<svg viewBox="1.5 1.5 36.5 24.9" ><path  d="M 1.5 1.5 L 8.13764762878418 1.5 L 12.58487224578857 23.71952819824219 C 12.8980655670166 25.29635238647461 14.29636383056641 26.42198181152344 15.90369701385498 26.39118003845215 L 32.03318023681641 26.39118003845215 C 33.64052200317383 26.42198181152344 35.03881454467773 25.29635238647461 35.35200881958008 23.71952819824219 L 38.00707244873047 9.797059059143066 L 9.797059059143066 9.797059059143066" fill="none" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_czp7x7 =
    '<svg viewBox="272.5 854.5 32.8 28.7" ><path transform="translate(272.5, 852.25)" d="M 29.60227584838867 4.209194660186768 C 26.0932788848877 1.218863964080811 20.87460708618164 1.756739139556885 17.65375900268555 5.080039978027344 L 16.39231300354004 6.379905223846436 L 15.13086700439453 5.080039978027344 C 11.91642189025879 1.756739139556885 6.691347599029541 1.218863964080811 3.18235182762146 4.209194660186768 C -0.8389065861701965 7.641351222991943 -1.050214886665344 13.80130386352539 2.54842734336853 17.52160835266113 L 14.93876838684082 30.31535720825195 C 15.73917865753174 31.14138031005859 17.03904342651367 31.14138031005859 17.83945465087891 30.31535720825195 L 30.22979545593262 17.52161026000977 C 33.83484268188477 13.80130577087402 33.62353134155273 7.641353130340576 29.60227394104004 4.209196090698242 Z" fill="none" stroke="#000000" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
