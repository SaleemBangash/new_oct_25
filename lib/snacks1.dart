import 'package:flutter/material.dart';
import 'package:new_oct_25/snacks/cheetos.dart';
import 'package:new_oct_25/snacks/doritos.dart';
import 'package:new_oct_25/snacks/kurkure.dart';
import 'package:new_oct_25/snacks/lays.dart';

class Snacks1 extends StatefulWidget {
  const Snacks1({Key? key}) : super(key: key);

  @override
  _Snacks1State createState() => _Snacks1State();
}

class _Snacks1State extends State<Snacks1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      body: ListView(
        children: [
          Scrollbar(
              child: SingleChildScrollView(
                  child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cheetos())),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(22)),
                        width: width / 2.3,
                        height: height / 3.5,
                        child: Column(children: <Widget>[
                          Image.asset(
                            "assets/images/cheetos.jpg",
                            height: height / 4.6,
                            fit: BoxFit.cover,
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Text(
                            "Cheetos",
                            style: TextStyle(
                                fontSize: text * 20,
                                fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Text(
                            "20.00SR",
                            style: TextStyle(
                                fontSize: text * 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: width / 19,
                    ),
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Lays())),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(22),
                            // border: Border.all(
                            //   width: 2,
                            // ),
                          ),
                          width: width / 2.3,
                          height: height / 3.5,
                          child: Column(children: <Widget>[
                            Image.asset("assets/images/lays.jpg"),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Text(
                              "Lays",
                              style: TextStyle(
                                  fontSize: text * 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Text(
                              "20.00SR",
                              style: TextStyle(
                                  fontSize: text * 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ])),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 21,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Kurkure())),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(22)),
                        width: width / 2.3,
                        height: height / 3.5,
                        child: Column(children: <Widget>[
                          Image.asset(
                            "assets/images/kurkure.jpg",
                            height: height / 4.6,
                            fit: BoxFit.cover,
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Text(
                            "Kurkure",
                            style: TextStyle(
                                fontSize: text * 20,
                                fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Text(
                            "20.00SR",
                            style: TextStyle(
                                fontSize: text * 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: width / 19,
                    ),
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Doritos())),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(22)),
                          width: width / 2.3,
                          height: height / 3.5,
                          child: Column(children: <Widget>[
                            Image.asset(
                              "assets/images/doritos.jpg",
                              height: height / 4.6,
                              fit: BoxFit.cover,
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Text(
                              "Doritos",
                              style: TextStyle(
                                  fontSize: text * 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Text(
                              "20.00SR",
                              style: TextStyle(
                                  fontSize: text * 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ])),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 21,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(22)),
                      width: width / 2.3,
                      height: height / 3.5,
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/sheri-silver-1.png"),
                        SizedBox(
                          height: height / 93,
                        ),
                        Text(
                          "Strawberry",
                          style: TextStyle(
                              fontSize: text * 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height / 93,
                        ),
                        Text(
                          "20.00SR",
                          style: TextStyle(
                              fontSize: text * 17, fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: width / 19,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(22)),
                        width: width / 2.3,
                        height: height / 3.5,
                        child: Column(children: <Widget>[
                          Image.asset("assets/images/sheri-silver-7.png"),
                          SizedBox(
                            height: height / 93,
                          ),
                          Text(
                            "Strawberry",
                            style: TextStyle(
                                fontSize: text * 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height / 93,
                          ),
                          Text(
                            "20.00SR",
                            style: TextStyle(
                                fontSize: text * 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ],
                ),
                SizedBox(
                  height: height / 21,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(22)),
                      width: width / 2.3,
                      height: height / 3.5,
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/sheri-silver-2.png"),
                        SizedBox(
                          height: height / 93,
                        ),
                        Text(
                          "Chocolate",
                          style: TextStyle(
                              fontSize: text * 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height / 93,
                        ),
                        Text(
                          "20.00SR",
                          style: TextStyle(
                              fontSize: text * 17, fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: width / 19,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(22)),
                        width: width / 2.3,
                        height: height / 3.5,
                        child: Column(children: <Widget>[
                          Image.asset("assets/images/sheri-silver-1.png"),
                          SizedBox(
                            height: height / 93,
                          ),
                          Text(
                            "Strawberry",
                            style: TextStyle(
                                fontSize: text * 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height / 93,
                          ),
                          Text(
                            "20.00SR",
                            style: TextStyle(
                                fontSize: text * 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ],
                ),
              ],
            ),
          ))),
        ],
      ),
    );
  }
}
