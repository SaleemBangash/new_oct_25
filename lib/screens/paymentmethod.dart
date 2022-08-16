// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, unnecessary_new
import 'package:flutter/material.dart';
import 'package:new_oct_25/screens/new.dart';

class PaymentMethod extends StatefulWidget {
  PaymentMethod({
    Key? key,
  }) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int _currentIndex = 0;
  int _itemCount = 0;
  bool aChecked = false;
  bool bChecked = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      backgroundColor: const Color(0xfffF5ECE3),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "payment method".toUpperCase(),
          style: TextStyle(fontSize: 17),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => New())));
            },
            child: Image.asset("assets/images/back_errow.png")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  width: 370,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      // border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset("assets/images/pin_icon@2x.png",
                              height: 28, width: 28),
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "PickUp From",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10),
                                      ),
                                      Text(
                                        "No Branch Picked",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                    ]),
                              ),
                              // SizedBox(width: 100),
                              Image.asset("assets/images/drop_arrow.png",
                                  height: 40, width: 40),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "payment method".toUpperCase(),
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xffACACAC),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Container(
              width: 370,
              height: 60,
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
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: 17,
                              width: 17,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  shape: BoxShape.circle,
                                  color: Colors.transparent),
                              child: Transform.scale(
                                scale: 0.6,
                                child: Checkbox(
                                  checkColor: Colors.black,
                                  side: BorderSide(color: Colors.white),
                                  activeColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  value: aChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      aChecked = value!;

                                      bChecked = false;
                                      // cChecked = false;
                                      // dChecked = false;
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
                          Text("cash on delivery".toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13)),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: 17,
                              width: 17,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  shape: BoxShape.circle,
                                  color: Colors.transparent),
                              child: Transform.scale(
                                scale: 0.6,
                                child: Checkbox(
                                  checkColor: Colors.black,
                                  side: BorderSide(color: Colors.white),
                                  activeColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  value: bChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      bChecked = value!;

                                      aChecked = false;
                                      // cChecked = false;
                                      // dChecked = false;
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
                          Text("card".toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13)),
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "ordered items".toUpperCase(),
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xffACACAC),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Container(
              height: 180,
              width: 370,
              decoration: BoxDecoration(

                  // border: Border.all(
                  //   //width: 2,
                  //   color: Colors.black,
                  // ),

                  color: Color(0xffFFF8F0),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "items & quantity".toUpperCase(),
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffBAA378),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "price".toUpperCase(),
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffBAA378),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Ice Cream with Cramil",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "x3",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xffBAA378),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          "120 SA",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Regular",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xffACACAC),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "COD",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "15 SA    ",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 17),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "120 SA",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffBAA378),
                              fontSize: 17),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "135 SA".toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffBAA378),
                              fontSize: 17),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "135 SA".toUpperCase(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20),
                              ),
                              Text(
                                "Total is inclusive of VAT",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 11),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Expanded(
                                    child: AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      backgroundColor: Color(0xffFFF8F0),
                                      content: SizedBox(
                                        height: 150,
                                        // width: 350,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.only(),
                                                child: Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Image.asset(
                                                      "assets/images/cencel_icon.png",
                                                      height: 20,
                                                      width: 20,
                                                    )),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20.0,
                                            ),
                                            Text(
                                              "Your Order placed\nsuccessfully",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xffACACAC)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Center(
                                child: Text(
                                  "PROCEED",
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
      // bottomNavigationBar: Bottomsheet()
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
