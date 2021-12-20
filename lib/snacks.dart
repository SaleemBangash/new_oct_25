// ignore_for_file: prefer_const_constructors

import 'package:adobe_xd/page_link.dart';
import 'package:flutter/material.dart';
import 'package:new_oct_25/snacks/cheetos.dart';
import 'package:new_oct_25/snacks/doritos.dart';
import 'package:new_oct_25/snacks/kurkure.dart';
// import 'package:newoct/snacks/cheetos.dart';
// import 'package:newoct/snacks/doritos.dart';
// import 'package:newoct/snacks/kurkure.dart';

import 'snacks/lays.dart';

class Snacks extends StatefulWidget {
  const Snacks({Key? key}) : super(key: key);

  @override
  _DrinksState createState() => _DrinksState();
}

class _DrinksState extends State<Snacks> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Snacks",
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
          children: [
            Card(
              color: Colors.brown[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              //margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: GridTile(
                header: Center(
                  child: Text(
                    "KurKure".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 2,
                      ),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeInOut,
                              duration: 0.6,
                              pageBuilder: () => Kurkure(),
                            ),
                          ],
                          child: Image.asset(
                            "assets/images/kurkure.jpg",
                            fit: BoxFit.fill,
                          ),
                        ))),
                footer: Center(
                    child: Text(
                  "100",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            Card(
              color: Colors.brown[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              //margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: GridTile(
                header: Center(
                  child: Text(
                    "Lays".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 2,
                      ),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeInOut,
                              duration: 0.6,
                              pageBuilder: () => Lays(),
                            ),
                          ],
                          child: Image.asset(
                            "assets/images/lays.jpg",
                            fit: BoxFit.fill,
                          ),
                        ))),
                footer: Center(
                    child: Center(
                  child: Text(
                    "100",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )),
              ),
            ),
            Card(
              color: Colors.brown[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              //margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: GridTile(
                header: Center(
                  child: Text(
                    "doritos".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 2,
                      ),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeInOut,
                              duration: 0.6,
                              pageBuilder: () => Doritos(),
                            ),
                          ],
                          child: Image.asset(
                            "assets/images/doritos.jpg",
                            fit: BoxFit.fill,
                          ),
                        ))),
                footer: Center(
                    child: Center(
                  child: Text(
                    "100",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )),
              ),
            ),
            Card(
              color: Colors.brown[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              //margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: GridTile(
                header: Center(
                  child: Text(
                    "Cheetos".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 2,
                      ),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeInOut,
                              duration: 0.6,
                              pageBuilder: () => Cheetos(),
                            ),
                          ],
                          child: Image.asset(
                            "assets/images/cheetos.jpg",
                            fit: BoxFit.fill,
                          ),
                        ))),
                footer: Center(
                    child: Center(
                  child: Text(
                    "100",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
