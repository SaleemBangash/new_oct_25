// // ignore_for_file: prefer_const_constructors

// import 'package:adobe_xd/page_link.dart';
// import 'package:flutter/material.dart';
// // import 'package:newoct/coffee/dopio.dart';
// // import 'package:newoct/coffee/flat.dart';
// // import 'package:newoct/coffee/lungo.dart';



// class Coffee extends StatefulWidget {
//   const Coffee({Key? key}) : super(key: key);

//   @override
//   _DrinksState createState() => _DrinksState();
// }

// class _DrinksState extends State<Coffee> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.white,
//           title: Text(
//             "Coffee",
//             style: TextStyle(
//                 fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
//           ),
//         ),
//         body: GridView(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
//           padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
//           children: [
//             Card(
//               color: Colors.brown[200],
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20)),
//               //margin: const EdgeInsets.symmetric(vertical: 20.0),
//               child: GridTile(
//                 header: Center(
//                   child: Text(
//                     "Americano".toUpperCase(),
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//                 // ignore: avoid_unnecessary_containers
//                 child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(
//                         width: 2,
//                       ),
//                     ),
//                     child: Padding(
//                         padding: const EdgeInsets.only(top: 20, bottom: 20),
//                         child: PageLink(
//                           links: [
//                             PageLinkInfo(
//                               transition: LinkTransition.Fade,
//                               ease: Curves.easeInOut,
//                               duration: 0.6,
//                               pageBuilder: () => Americano(),
//                             ),
//                           ],
//                           child: Image.asset(
//                             "assets/images/americano.jpg",
//                             fit: BoxFit.cover,
//                           ),
//                         ))),
//                 footer: Center(
//                     child: Text(
//                   "100",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 )),
//               ),
//             ),
//             Card(
//               color: Colors.brown[200],
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20)),
//               //padding: const Edge
//               //Insets.all(8),
//               child: GridTile(
//                 header: Center(
//                   child: Text(
//                     "Doppio".toUpperCase(),
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//                 // ignore: avoid_unnecessary_containers
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     border: Border.all(
//                       width: 2,
//                     ),
//                   ),
//                   child: Padding(
//                       padding: const EdgeInsets.only(top: 20, bottom: 20),
//                       child: PageLink(
//                         links: [
//                           PageLinkInfo(
//                             transition: LinkTransition.Fade,
//                             ease: Curves.easeInOut,
//                             duration: 0.6,
//                             pageBuilder: () => Dopio(),
//                           ),
//                         ],
//                         child: Image.asset(
//                           "assets/images/doppio.jpg",
//                           fit: BoxFit.cover,
//                         ),
//                       )),
//                 ),
//                 footer: Center(
//                   child: Text("100",
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//                 ),
//               ),
//             ),
//             Card(
//               semanticContainer: true,
//               color: Colors.brown[200],
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20)),
//               //padding: const EdgeInsets.all(8),
//               child: GridTile(
//                 header: Center(
//                   child: Text(
//                     "Flat Coffee".toUpperCase(),
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//                 // ignore: avoid_unnecessary_containers
//                 child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(
//                         width: 2,
//                       ),
//                     ),
//                     child: Padding(
//                         padding: const EdgeInsets.only(top: 20, bottom: 20),
//                         child: PageLink(
//                           links: [
//                             PageLinkInfo(
//                               transition: LinkTransition.Fade,
//                               ease: Curves.easeInOut,
//                               duration: 0.6,
//                               pageBuilder: () => Flat(),
//                             ),
//                           ],
//                           child: Image.asset(
//                             "assets/images/flat.jpg",
//                             fit: BoxFit.cover,
//                           ),
//                         ))),
//                 footer: Center(
//                   child: Text("100",
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//                 ),
//               ),
//             ),
//             Card(
//               color: Colors.brown[200],
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20)),
//               // padding: const EdgeInsets.all(8),
//               child: GridTile(
//                 header: Center(
//                   child: Text(
//                     "Lungo Coffee".toUpperCase(),
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//                 // ignore: avoid_unnecessary_containers
//                 child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(
//                         width: 2,
//                       ),
//                     ),
//                     child: Padding(
//                         padding: const EdgeInsets.only(top: 20, bottom: 20),
//                         child: PageLink(
//                           links: [
//                             PageLinkInfo(
//                               transition: LinkTransition.Fade,
//                               ease: Curves.easeInOut,
//                               duration: 0.6,
//                               pageBuilder: () => Lungo(),
//                             ),
//                           ],
//                           child: Image.asset(
//                             "assets/images/lungo.jpg",
//                             fit: BoxFit.cover,
//                           ),
//                         ))),
//                 footer: Center(
//                   child: Text("100",
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//                 ),
//               ),
//               //color: Colors.teal[400],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
