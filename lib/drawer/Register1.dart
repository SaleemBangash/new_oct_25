// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, unnecessary_new
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import '../Cart.dart';
import '../Tab2/iceCream2.dart';
import '../Tab2/snacks2.dart';
import '../Wishlist.dart';
import './Signin2.dart';
import 'package:adobe_xd/page_link.dart';
import '../Home.dart';
// import './Component31.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register1 extends StatefulWidget {
  Register1({
    Key? key,
  }) : super(key: key);

  @override
  State<Register1> createState() => _Register1State();
}

class _Register1State extends State<Register1>
    with SingleTickerProviderStateMixin {
  bool isChecked = false;
  bool onChecked = false;
  bool ifChecked = false;
  bool iChecked = false;
  int selectedValue = 0;
  Map<int, Widget> children = <int, Widget>{
    0: Expanded(
      child: Text("SignIn"),
    ),
    1: Expanded(
      child: Text("Register"),
    ),
  };

  final List<Widget> screens = [Cart(), Home()];

  TabController? _tabController;

  // Current Index of tab
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController =
        new TabController(length: 2, initialIndex: _currentIndex, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xfffF5ECE3),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/menu_logo.png"),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "ROYAT CAFE",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/cencel_icon.png"),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TabBar(
                    indicatorColor: Theme.of(context).primaryColor,
                    indicatorWeight: 4,

                    // indicatorSize: TabBarIndicatorSize.tab,
                    //indicatorWeight: 15,
                    // indicatorPadding: const EdgeInsets.all(10),
                    indicatorSize: TabBarIndicatorSize.tab,
                    //indicatorColor: Colors.blue,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        // border: Border(
                        //     bottom: BorderSide(
                        //   color: Colors.black,
                        //   width: 4.0,
                        // )),
                        // border: Border.all(width: 5, color: Colors.black
                        // ),
                        color: Color(0xffBAA378)),
                    padding: EdgeInsets.zero,
                    indicatorPadding: EdgeInsets.zero,
                    labelPadding: EdgeInsets.zero,
                    labelColor: Color(0xffFFFFFF),
                    labelStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    unselectedLabelColor: Color(0xffACACAC),
                    tabs: [
                      Tab(
                        text: "SIGN IN",
                      ),
                      Tab(
                        text: "REGISTER",
                      ),
                    ]),
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            SizedBox(
              height: 550,
              child: TabBarView(children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 3.0),
                        child: Text(
                          "PHONE NUMBER",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffACACAC)),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        // width: 190,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10.0)),
                              hintText: "+966",
                              // labelText: "Phone",
                              hintStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              fillColor: Color(0xffFFF8F0),
                              filled: true),
                          maxLines: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 17, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/slection_slected.png"),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              "I agree to the terms and condition\nand the privacy policy",
                              style: TextStyle(
                                  color: Color(0xffACACAC),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          height: 45,
                          // width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xff82C5B1)),
                          child: Center(
                              child: Text(
                            "Long in".toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 3.0),
                        child: Text(
                          "FIRST NAME",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffACACAC)),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        // width: 190,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10.0)),

                              // labelText: "Phone",
                              hintStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              fillColor: Color(0xffFFF8F0),
                              filled: true),
                          maxLines: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 3.0),
                        child: Text(
                          "LAST NAME",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffACACAC)),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        // width: 190,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10.0)),

                              // labelText: "Phone",
                              hintStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              fillColor: Color(0xffFFF8F0),
                              filled: true),
                          maxLines: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 3.0),
                        child: Text(
                          "PHONE NUMBER",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffACACAC)),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        // width: 190,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10.0)),
                              hintText: "+966",
                              // labelText: "Phone",
                              hintStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              fillColor: Color(0xffFFF8F0),
                              filled: true),
                          maxLines: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 17, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/slection_slected.png"),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              "I agree to the terms and condition\nand the privacy policy",
                              style: TextStyle(
                                  color: Color(0xffACACAC),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          height: 45,
                          // width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xff82C5B1)),
                          child: Center(
                              child: Text(
                            "Register".toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
