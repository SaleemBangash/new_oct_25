import 'package:flutter/material.dart';
import 'package:new_oct_25/coffee/americano.dart';
import 'package:new_oct_25/coffee/dopio.dart';
import 'package:new_oct_25/coffee/flat.dart';
import 'package:new_oct_25/coffee/lungo.dart';

class Coffee1 extends StatefulWidget {
  const Coffee1({Key? key}) : super(key: key);

  @override
  _Coffee1State createState() => _Coffee1State();
}

class _Coffee1State extends State<Coffee1> {
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
                          MaterialPageRoute(builder: (context) => Americano())),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(22)),
                        width: width / 2.3,
                        height: height / 3.5,
                        child: Column(children: <Widget>[
                          Image.asset("assets/images/americano.jpg"),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Text(
                            "Americano",
                            style: TextStyle(
                                fontSize: text * 16,
                                fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Text(
                            "20.00SR",
                            style: TextStyle(
                                fontSize: text * 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: width / 20,
                    ),
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dopio())),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(22)),
                          width: width / 2.3,
                          height: height / 3.5,
                          child: Column(children: <Widget>[
                            Image.asset(
                              "assets/images/doppio.jpg",
                              //height: height / 4.9,
                              fit: BoxFit.cover,
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Text(
                              "Doppio",
                              style: TextStyle(
                                  fontSize: text * 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Text(
                              "20.00SR",
                              style: TextStyle(
                                  fontSize: text * 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ])),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 41,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Flat())),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(22)),
                        //margin: const EdgeInsets.all(4),
                        width: width / 2.3,
                        height: height / 3.5,
                        child: Column(children: <Widget>[
                          Image.asset(
                            "assets/images/flat.jpg",
                            height: height / 5,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: height / 53,
                          ),
                          Text(
                            "Flat",
                            style: TextStyle(
                                fontSize: text * 16,
                                fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Text(
                            "20.00SR",
                            style: TextStyle(
                                fontSize: text * 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      width: width / 20,
                    ),
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Lungo())),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(22)),
                          width: width / 2.3,
                          height: height / 3.5,
                          child: Column(children: <Widget>[
                            Image.asset(
                              "assets/images/lungo.jpg",
                              height: height / 5,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: height / 53,
                            ),
                            Text(
                              "Lungo",
                              style: TextStyle(
                                  fontSize: text * 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Text(
                              "20.00SR",
                              style: TextStyle(
                                  fontSize: text * 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ])),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 41,
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
                              fontSize: text * 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height / 93,
                        ),
                        Text(
                          "20.00SR",
                          style: TextStyle(
                              fontSize: text * 15, fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: width / 20,
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
                                fontSize: text * 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height / 93,
                          ),
                          Text(
                            "20.00SR",
                            style: TextStyle(
                                fontSize: text * 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                  ],
                ),
                SizedBox(
                  height: height / 41,
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
                          height: height / 73,
                        ),
                        Text(
                          "Chocolate",
                          style: TextStyle(
                              fontSize: text * 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height / 93,
                        ),
                        Text(
                          "20.00SR",
                          style: TextStyle(
                              fontSize: text * 15, fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: width / 20,
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
                                fontSize: text * 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height / 93,
                          ),
                          Text(
                            "20.00SR",
                            style: TextStyle(
                                fontSize: text * 15,
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
