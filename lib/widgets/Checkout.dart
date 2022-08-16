// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, unnecessary_new
// import 'package:adobe_xd/page_link.dart';
// import 'package:flutter/material.dart';

// import 'package:new_oct_25/new.dart';

// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:new_oct_25/widgets/bottomsheet.dart';

// import '../Cart.dart';
// import '../Home.dart';
// import '../widgets/minus.dart';

// // import 'package:newoct/Cart.dart';
// // import 'package:newoct/Cart1.dart';
// // import 'package:newoct/Home.dart';
// // import 'package:newoct/Wishlist.dart';
// // import 'package:newoct/adddescription.dart';
// // import 'package:newoct/paymentmethod.dart';
// // import 'package:newoct/pickup_place.dart';
// // import 'package:newoct/pickupplace.dart';

// class Checkout extends StatefulWidget {
//   Checkout({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<Checkout> createState() => _CheckoutState();
// }

// class _CheckoutState extends State<Checkout> {
//   int _itemCount = 0;
//   int _itemCountt = 0;
//   bool _hasBeenPressed = false;
//   bool _hadBeenPressed = false;
//   bool _wasBeenPressed = false;
//   bool _isBeenPressed = false;
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     double text = MediaQuery.textScaleFactorOf(context);
//     return Scaffold(
//         backgroundColor: const Color(0xfffdfdfd),
//         body: ListView(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(right: 290, top: 10),
//               child: PageLink(
//                 links: [
//                   PageLinkInfo(
//                     transition: LinkTransition.Fade,
//                     ease: Curves.easeOut,
//                     duration: 0.3,
//                     pageBuilder: () => Home(),
//                   ),
//                 ],
//                 // ignore: prefer_const_constructors
//                 child: CircleAvatar(
//                     backgroundColor: Color(0xffbaa378),
//                     child: Icon(
//                       Icons.arrow_back,
//                       color: Colors.black,
//                     )),
//               ),
//             ),
//             Center(
//               child: Text(
//                 "25OCT",
//                 style: TextStyle(
//                     fontSize: text * 25,
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xffbaa378)),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: Text(
//                 "CheckOut",
//                 style: TextStyle(
//                     fontSize: text * 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Container(
//                 height: height / 4.2,
//                 width: width / 5,
//                 decoration: BoxDecoration(
//                     border: Border.all(
//                       //width: 2,
//                       color: Colors.black,
//                     ),
//                     color: Colors.transparent,
//                     borderRadius: BorderRadius.circular(16)),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 10),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(35),
//                             child: Image.asset(
//                               "assets/images/sheri-silver-1.png",
//                               width: width / 4,
//                               height: height / 7,
//                             ),
//                           ),
//                         ),
//                         Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(right: 50),
//                               child: Row(
//                                 children: [
//                                   Text(
//                                     "Vanilla Flavor",
//                                     style: TextStyle(
//                                         // fontSize: text * 17
//                                         ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Row(
//                               // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsets.symmetric(
//                                       vertical: 10, horizontal: 30),
//                                   child: Text(
//                                     "Small",
//                                     style: TextStyle(
//                                         // fontSize: text * 17
//                                         ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 20),
//                                   child: ElevatedButton(
//                                     child: Text(
//                                       "      Add\nDescription",
//                                       style: TextStyle(
//                                         // fontSize: text * 15,
//                                         color: Colors.black,
//                                         // fontWeight: FontWeight.bold
//                                       ),
//                                     ),
//                                     style: TextButton.styleFrom(
//                                         shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(12)),

//                                         //StadiumBorder(),
//                                         // side: BorderSide(width: 6),
//                                         // minimumSize: Size(60, 40),
//                                         // maximumSize: Size(120, 40),
//                                         backgroundColor: Color(0xffbaa378)),
//                                     onPressed: () {
//                                       showModalBottomSheet(
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius: BorderRadius.only(
//                                             topLeft: Radius.circular(50.0),
//                                             topRight: Radius.circular(50.0),
//                                           ),
//                                         ),
//                                         context: context,
//                                         builder: (context) {
//                                           return Container(
//                                             height: height / 1,
//                                             width: width / 2,
//                                             decoration: BoxDecoration(
//                                               color: Colors.transparent,
//                                               borderRadius: BorderRadius.only(
//                                                 topLeft: Radius.circular(50.0),
//                                                 topRight: Radius.circular(50.0),
//                                               ),

//                                               //color: Colors.transparent,
//                                               border: Border.all(
//                                                   width: 2.0,
//                                                   color:
//                                                       const Color(0xff707070)),
//                                             ),
//                                             child: Column(
//                                               children: [
//                                                 Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(8.0),
//                                                   child: Text(
//                                                     "Select Your Language",
//                                                     style: TextStyle(
//                                                         // fontSize: text * 16
//                                                         ),
//                                                   ),
//                                                 ),
//                                                 Text(
//                                                   "Build Your Understanding",
//                                                   style: TextStyle(
//                                                       // fontSize: text * 15
//                                                       ),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 10,
//                                                 ),
//                                                 Stack(
//                                                   children: [
//                                                     Container(
//                                                         width: width / 1.2,
//                                                         height: height / 15,
//                                                         decoration:
//                                                             BoxDecoration(
//                                                           color: Colors
//                                                               .transparent,
//                                                           borderRadius:
//                                                               BorderRadius
//                                                                   .circular(10),
//                                                           border: Border.all(
//                                                             color: Colors.black,
//                                                           ),
//                                                         ),
//                                                         child: Row(
//                                                           children: [
//                                                             Padding(
//                                                               padding:
//                                                                   const EdgeInsets
//                                                                           .only(
//                                                                       left: 10),
//                                                               child: Container(
//                                                                 decoration: BoxDecoration(
//                                                                     shape: BoxShape
//                                                                         .circle),
//                                                                 width:
//                                                                     width / 40,
//                                                                 height:
//                                                                     height / 70,
//                                                                 child:
//                                                                     RaisedButton(
//                                                                   shape: RoundedRectangleBorder(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               40)),
//                                                                   child:
//                                                                       new Text(
//                                                                     '',
//                                                                   ),
//                                                                   textColor: Color(
//                                                                       0xffbaa378),
//                                                                   // 2
//                                                                   color: _hasBeenPressed
//                                                                       ? Colors
//                                                                           .green
//                                                                       : Colors
//                                                                           .white70,
//                                                                   // 3
//                                                                   onPressed:
//                                                                       () => {
//                                                                     setState(
//                                                                         () {
//                                                                       _hasBeenPressed =
//                                                                           !_hasBeenPressed;
//                                                                       _isBeenPressed =
//                                                                           true;
//                                                                       _wasBeenPressed =
//                                                                           true;
//                                                                       _hadBeenPressed =
//                                                                           true;
//                                                                     })
//                                                                   },
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Column(
//                                                               children: [
//                                                                 Padding(
//                                                                   padding: const EdgeInsets
//                                                                           .only(
//                                                                       top: 20,
//                                                                       left: 5),
//                                                                   child: Text(
//                                                                     "Add some toppings",
//                                                                     style: TextStyle(
//                                                                         // fontSize:
//                                                                         //     text *
//                                                                         //         14,
//                                                                         // fontWeight: FontWeight.bold
//                                                                         ),
//                                                                   ),
//                                                                 )
//                                                               ],
//                                                             ),
//                                                             Row(
//                                                               children: <
//                                                                   Widget>[
//                                                                 _itemCountt !=
//                                                                         -1
//                                                                     ? new IconButton(
//                                                                         icon: CircleAvatar(
//                                                                             radius: 7,
//                                                                             backgroundColor: Colors.black,
//                                                                             child: new Icon(
//                                                                               Icons.remove,
//                                                                               size: 13,
//                                                                             )),
//                                                                         onPressed:
//                                                                             () =>
//                                                                                 setState(() => _itemCountt--),
//                                                                       )
//                                                                     : new Container(),
//                                                                 new Text(
//                                                                   _itemCountt
//                                                                       .toString(),
//                                                                   style: TextStyle(
//                                                                       // fontSize:
//                                                                       //     text *
//                                                                       //         15
//                                                                       ),
//                                                                 ),
//                                                                 new IconButton(
//                                                                     icon:
//                                                                         CircleAvatar(
//                                                                             radius:
//                                                                                 7,
//                                                                             backgroundColor: Colors
//                                                                                 .black,
//                                                                             child:
//                                                                                 new Icon(
//                                                                               Icons.add,
//                                                                               size: 13,
//                                                                             )),
//                                                                     onPressed: () =>
//                                                                         setState(() =>
//                                                                             _itemCountt++))
//                                                               ],
//                                                             ),
//                                                           ],
//                                                         )),
//                                                     Padding(
//                                                       padding:
//                                                           const EdgeInsets.only(
//                                                               left: 240,
//                                                               top: 8),
//                                                       child: Column(
//                                                         children: [
//                                                           Padding(
//                                                             padding:
//                                                                 const EdgeInsets
//                                                                     .only(
//                                                               top: 10,
//                                                             ),
//                                                             child: Text(
//                                                               "+07SR",
//                                                               style: TextStyle(
//                                                                   // fontSize:
//                                                                   //     text * 12,
//                                                                   // fontWeight:
//                                                                   //     FontWeight
//                                                                   //         .bold
//                                                                   ),
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     )
//                                                   ],
//                                                 ),
//                                                 SizedBox(
//                                                   height: 10,
//                                                 ),
//                                                 Stack(
//                                                   children: [
//                                                     Container(
//                                                         width: width / 1.2,
//                                                         height: height / 15,
//                                                         decoration:
//                                                             BoxDecoration(
//                                                           color: Colors
//                                                               .transparent,
//                                                           borderRadius:
//                                                               BorderRadius
//                                                                   .circular(10),
//                                                           border: Border.all(
//                                                             color: Colors.black,
//                                                           ),
//                                                         ),
//                                                         child: Row(
//                                                           children: [
//                                                             Padding(
//                                                               padding:
//                                                                   const EdgeInsets
//                                                                           .only(
//                                                                       left: 10),
//                                                               child: Container(
//                                                                 decoration: BoxDecoration(
//                                                                     shape: BoxShape
//                                                                         .circle),
//                                                                 width:
//                                                                     width / 40,
//                                                                 height:
//                                                                     height / 70,
//                                                                 child:
//                                                                     RaisedButton(
//                                                                   shape: RoundedRectangleBorder(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               40)),
//                                                                   child:
//                                                                       new Text(
//                                                                     '',
//                                                                   ),
//                                                                   textColor: Color(
//                                                                       0xffbaa378),
//                                                                   // 2
//                                                                   color: _hadBeenPressed
//                                                                       ? Colors
//                                                                           .green
//                                                                       : Colors
//                                                                           .white70,
//                                                                   // 3
//                                                                   onPressed:
//                                                                       () => {
//                                                                     setState(
//                                                                         () {
//                                                                       _hadBeenPressed =
//                                                                           !_hadBeenPressed;
//                                                                       _isBeenPressed =
//                                                                           true;
//                                                                       _wasBeenPressed =
//                                                                           true;
//                                                                       _hasBeenPressed =
//                                                                           true;
//                                                                     })
//                                                                   },
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Column(
//                                                               children: [
//                                                                 Padding(
//                                                                   padding: const EdgeInsets
//                                                                           .only(
//                                                                       top: 20,
//                                                                       left: 5),
//                                                                   child: Text(
//                                                                     "Add extra scopes",
//                                                                     style: TextStyle(
//                                                                         // fontSize:
//                                                                         //     text *
//                                                                         //         14,
//                                                                         // fontWeight: FontWeight.bold
//                                                                         ),
//                                                                   ),
//                                                                 )
//                                                               ],
//                                                             ),
//                                                             Padding(
//                                                               padding:
//                                                                   const EdgeInsets
//                                                                           .only(
//                                                                       left: 15),
//                                                               child: Row(
//                                                                 children: <
//                                                                     Widget>[
//                                                                   _itemCountt !=
//                                                                           -1
//                                                                       ? new IconButton(
//                                                                           icon: CircleAvatar(
//                                                                               radius: 7,
//                                                                               backgroundColor: Colors.black,
//                                                                               child: new Icon(
//                                                                                 Icons.remove,
//                                                                                 size: 13,
//                                                                               )),
//                                                                           onPressed: () =>
//                                                                               setState(() => _itemCountt--),
//                                                                         )
//                                                                       : new Container(),
//                                                                   new Text(
//                                                                     _itemCountt
//                                                                         .toString(),
//                                                                     style: TextStyle(
//                                                                         // fontSize:
//                                                                         //     text *
//                                                                         //         15
//                                                                         ),
//                                                                   ),
//                                                                   new IconButton(
//                                                                       icon: CircleAvatar(
//                                                                           radius: 7,
//                                                                           backgroundColor: Colors.black,
//                                                                           child: new Icon(
//                                                                             Icons.add,
//                                                                             size:
//                                                                                 13,
//                                                                           )),
//                                                                       onPressed: () => setState(() => _itemCountt++))
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         )),
//                                                     Padding(
//                                                       padding:
//                                                           const EdgeInsets.only(
//                                                               left: 240,
//                                                               top: 8),
//                                                       child: Column(
//                                                         children: [
//                                                           Padding(
//                                                             padding:
//                                                                 const EdgeInsets
//                                                                     .only(
//                                                               top: 10,
//                                                             ),
//                                                             child: Text(
//                                                               "+07SR",
//                                                               style: TextStyle(
//                                                                   // fontSize:
//                                                                   //     text * 12,
//                                                                   // fontWeight:
//                                                                   //     FontWeight
//                                                                   //         .bold
//                                                                   ),
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     )
//                                                   ],
//                                                 ),
//                                                 SizedBox(
//                                                   height: 10,
//                                                 ),
//                                                 Stack(
//                                                   children: [
//                                                     Container(
//                                                         width: width / 1.2,
//                                                         height: height / 15,
//                                                         decoration:
//                                                             BoxDecoration(
//                                                           color: Colors
//                                                               .transparent,
//                                                           borderRadius:
//                                                               BorderRadius
//                                                                   .circular(10),
//                                                           border: Border.all(
//                                                             color: Colors.black,
//                                                           ),
//                                                         ),
//                                                         child: Row(
//                                                           children: [
//                                                             Padding(
//                                                               padding:
//                                                                   const EdgeInsets
//                                                                           .only(
//                                                                       left: 10),
//                                                               child: Container(
//                                                                 decoration: BoxDecoration(
//                                                                     shape: BoxShape
//                                                                         .circle),
//                                                                 width:
//                                                                     width / 40,
//                                                                 height:
//                                                                     height / 70,
//                                                                 child:
//                                                                     RaisedButton(
//                                                                   shape: RoundedRectangleBorder(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               40)),
//                                                                   child:
//                                                                       new Text(
//                                                                     '',
//                                                                   ),
//                                                                   textColor: Color(
//                                                                       0xffbaa378),
//                                                                   // 2
//                                                                   color: _wasBeenPressed
//                                                                       ? Colors
//                                                                           .green
//                                                                       : Colors
//                                                                           .white70,
//                                                                   // 3
//                                                                   onPressed:
//                                                                       () => {
//                                                                     setState(
//                                                                         () {
//                                                                       _wasBeenPressed =
//                                                                           !_wasBeenPressed;
//                                                                       _isBeenPressed =
//                                                                           true;
//                                                                       _hasBeenPressed =
//                                                                           true;
//                                                                       _hadBeenPressed =
//                                                                           true;
//                                                                     })
//                                                                   },
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                             Column(
//                                                               children: [
//                                                                 Padding(
//                                                                   padding: const EdgeInsets
//                                                                           .only(
//                                                                       top: 20,
//                                                                       left: 5),
//                                                                   child: Text(
//                                                                     "Add extra flavor",
//                                                                     style: TextStyle(
//                                                                         // fontSize:
//                                                                         //     // text *
//                                                                         //     //     14,
//                                                                         // fontWeight: FontWeight.bold
//                                                                         ),
//                                                                   ),
//                                                                 )
//                                                               ],
//                                                             ),
//                                                             Padding(
//                                                               padding:
//                                                                   const EdgeInsets
//                                                                           .only(
//                                                                       left: 22),
//                                                               child: Row(
//                                                                 children: <
//                                                                     Widget>[
//                                                                   _itemCountt !=
//                                                                           -1
//                                                                       ? new IconButton(
//                                                                           icon: CircleAvatar(
//                                                                               radius: 7,
//                                                                               backgroundColor: Colors.black,
//                                                                               child: new Icon(
//                                                                                 Icons.remove,
//                                                                                 size: 13,
//                                                                               )),
//                                                                           onPressed: () =>
//                                                                               setState(() => _itemCountt--),
//                                                                         )
//                                                                       : new Container(),
//                                                                   new Text(
//                                                                     _itemCountt
//                                                                         .toString(),
//                                                                     style: TextStyle(
//                                                                         // fontSize:
//                                                                         //     text *
//                                                                         //         15
//                                                                         ),
//                                                                   ),
//                                                                   new IconButton(
//                                                                       icon: CircleAvatar(
//                                                                           radius: 7,
//                                                                           backgroundColor: Colors.black,
//                                                                           child: new Icon(
//                                                                             Icons.add,
//                                                                             size:
//                                                                                 13,
//                                                                           )),
//                                                                       onPressed: () => setState(() => _itemCountt++))
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         )),
//                                                     Padding(
//                                                       padding:
//                                                           const EdgeInsets.only(
//                                                               left: 240,
//                                                               top: 8),
//                                                       child: Column(
//                                                         children: [
//                                                           Padding(
//                                                             padding:
//                                                                 const EdgeInsets
//                                                                     .only(
//                                                               top: 10,
//                                                             ),
//                                                             child: Text(
//                                                               "+07SR",
//                                                               style: TextStyle(
//                                                                   // fontSize:
//                                                                   //     // text * 12,
//                                                                   // fontWeight:
//                                                                   //     FontWeight
//                                                                   //         .bold
//                                                                   ),
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     )
//                                                   ],
//                                                 ),
//                                                 SizedBox(
//                                                   height: 10,
//                                                 ),
//                                                 Container(
//                                                   width: width / 1.2,
//                                                   height: height / 6.7,
//                                                   decoration: BoxDecoration(
//                                                       color: Color(0xffbaa378),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               20)),
//                                                   child: Padding(
//                                                     padding:
//                                                         const EdgeInsets.only(
//                                                             right: 90),
//                                                     child: Column(
//                                                       // mainAxisAlignment:
//                                                       //     MainAxisAlignment.start,
//                                                       children: [
//                                                         Padding(
//                                                           padding:
//                                                               const EdgeInsets
//                                                                       .only(
//                                                                   right: 40,
//                                                                   top: 10),
//                                                           child: Text(
//                                                             "Add some extra toppings\non ice cream with",
//                                                             style: TextStyle(
//                                                               // fontSize:
//                                                               //     // text * 10,
//                                                               color:
//                                                                   Colors.white,
//                                                               // fontWeight:
//                                                               //     FontWeight
//                                                               //         .bold
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         Padding(
//                                                           padding:
//                                                               const EdgeInsets
//                                                                       .only(
//                                                                   right: 130,
//                                                                   top: 5),
//                                                           child: Text(
//                                                             "Hot fudges",
//                                                             style: TextStyle(
//                                                               // fontSize:
//                                                               //     text * 10,
//                                                               color:
//                                                                   Colors.white,
//                                                               // fontWeight:
//                                                               //     FontWeight
//                                                               //         .bold
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         Padding(
//                                                           padding:
//                                                               const EdgeInsets
//                                                                       .only(
//                                                                   right: 140,
//                                                                   top: 5),
//                                                           child: Text(
//                                                             "Sprinkles",
//                                                             style: TextStyle(
//                                                               // fontSize:
//                                                               //     text * 10,
//                                                               color:
//                                                                   Colors.white,
//                                                               // fontWeight:
//                                                               //     FontWeight
//                                                               //         .bold
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         Padding(
//                                                           padding:
//                                                               const EdgeInsets
//                                                                       .only(
//                                                                   right: 150,
//                                                                   top: 5),
//                                                           child: Text(
//                                                             "Carame",
//                                                             style: TextStyle(
//                                                               // fontSize:
//                                                               //     text * 10,
//                                                               color:
//                                                                   Colors.white,
//                                                               // fontWeight:
//                                                               //     FontWeight
//                                                               //         .bold
//                                                             ),
//                                                           ),
//                                                         )
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Padding(
//                                                   padding:
//                                                       const EdgeInsets.only(
//                                                           left: 10, right: 10),
//                                                   child: Row(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       Padding(
//                                                         padding:
//                                                             const EdgeInsets
//                                                                     .only(
//                                                                 right: 15),
//                                                         child: ElevatedButton(
//                                                           child: Text(
//                                                             "Add",
//                                                             style: TextStyle(
//                                                                 // fontSize:
//                                                                 //     // text * 10,
//                                                                 color: Colors
//                                                                     .grey[300],
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .bold),
//                                                           ),
//                                                           style: TextButton
//                                                               .styleFrom(
//                                                                   shape: RoundedRectangleBorder(
//                                                                       borderRadius: BorderRadius
//                                                                           .circular(
//                                                                               5)),

//                                                                   //StadiumBorder(),
//                                                                   // side: BorderSide(width: 6),
//                                                                   minimumSize:
//                                                                       Size(160,
//                                                                           20),
//                                                                   maximumSize:
//                                                                       Size(170,
//                                                                           20),
//                                                                   backgroundColor:
//                                                                       Color(
//                                                                           0xffbaa378)),
//                                                           onPressed: () {
//                                                             Navigator.push(
//                                                                 context,
//                                                                 MaterialPageRoute(
//                                                                     builder:
//                                                                         (context) =>
//                                                                             Cart()));
//                                                           },
//                                                         ),
//                                                       ),
//                                                       ElevatedButton(
//                                                         child: Text(
//                                                           "Cancel",
//                                                           style: TextStyle(
//                                                               // fontSize: text * 10,
//                                                               color: Colors
//                                                                   .grey[300],
//                                                               fontWeight:
//                                                                   FontWeight
//                                                                       .bold),
//                                                         ),
//                                                         style: TextButton
//                                                             .styleFrom(
//                                                                 shape: RoundedRectangleBorder(
//                                                                     borderRadius:
//                                                                         BorderRadius.circular(
//                                                                             5)),

//                                                                 //StadiumBorder(),
//                                                                 // side: BorderSide(width: 6),
//                                                                 minimumSize:
//                                                                     Size(160,
//                                                                         20),
//                                                                 maximumSize:
//                                                                     Size(170,
//                                                                         20),
//                                                                 backgroundColor:
//                                                                     Color(
//                                                                         0xffbaa378)),
//                                                         onPressed: () {
//                                                           Navigator.push(
//                                                               context,
//                                                               MaterialPageRoute(
//                                                                   builder:
//                                                                       (context) =>
//                                                                           Cart()));
//                                                         },
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 )
//                                               ],
//                                             ),
//                                           );

//                                           // Container(
//                                           //     height: height / 3,
//                                           //     width: width / 2,
//                                           //     decoration: BoxDecoration(color: Colors.black),
//                                           //     child: Column(
//                                           //       children: [
//                                           //         SizedBox(
//                                           //           height: height / 12,
//                                           //         ),
//                                           //         Container(
//                                           //           width: width / 1.7,
//                                           //           height: height / 5,
//                                           //           decoration:
//                                           //               BoxDecoration(color: Color(0xffbaa378)),
//                                           //         ),
//                                           //       ],
//                                           //     )

//                                           //     );
//                                           // Wrap(
//                                           //   children: [
//                                           //     ListTile(
//                                           //       leading: Icon(Icons.share),
//                                           //       title: Text('Share'),
//                                           //     ),
//                                           //     ListTile(
//                                           //       leading: Icon(Icons.copy),
//                                           //       title: Text('Copy Link'),
//                                           //     ),
//                                           //     ListTile(
//                                           //       leading: Icon(Icons.edit),
//                                           //       title: Text('Edit'),
//                                           //     ),
//                                           //   ],
//                                           // );
//                                         },
//                                       );
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         // Row(
//                         //   children: [
//                         //     Text("data"),
//                         //   ],
//                         // )
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                               padding: const EdgeInsets.only(left: 20),
//                               child: Minus()),
//                           Padding(
//                             padding: const EdgeInsets.only(right: 50),
//                             child: IconButton(
//                                 icon: Icon(
//                                   Icons.delete_outline_rounded,
//                                   size: 25,
//                                 ),
//                                 onPressed: () => Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Cart()))),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20, right: 20),
//               child: Container(
//                 // margin: EdgeInsets.all(12),
//                 height: height / 12.5,
//                 width: width / 4.5,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     //width: 2,
//                     color: Colors.black,
//                   ),
//                   color: Colors.transparent,
//                   borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(10.0),
//                       topLeft: Radius.circular(10.0),
//                       bottomLeft: Radius.circular(5.0),
//                       bottomRight: Radius.circular(5.0)),
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: TextFormField(
//                         maxLines: 2,
//                         style: TextStyle(
//                           color: Colors.white,
//                           // fontSize: 15,
//                           //height: 1.5
//                         ),
//                         keyboardType: TextInputType.number,
//                         decoration: InputDecoration(
//                           //fillColor: Colors.grey[300],
//                           //suffixText: "@gmail.com",
//                           prefixIcon: Icon(
//                             Icons.cast_outlined,
//                             size: 35,
//                           ),
//                           labelStyle: TextStyle(
//                               color: Colors.white,
//                               // fontSize: 20,
//                               fontWeight: FontWeight.bold),

//                           //labelText: "Enter PickUp Time",
//                           hintStyle: TextStyle(
//                               color: Colors.black, fontSize: text * 16),
//                           hintText: "Coupon Code",
//                           // border: OutlineInputBorder(
//                           //     borderRadius: BorderRadius.circular(16)),
//                           // labelText: "Email"
//                         ),
//                         // validator: (email) {
//                         //   if (isEmailValid("email"))
//                         //     return null;
//                         //   else
//                         //     return 'Enter a valid email address';
//                         // },
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: ElevatedButton(
//                         child: Text(
//                           "Apply Code",
//                           style: TextStyle(
//                               // fontSize: text * 15,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         style: TextButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(12)),

//                             //StadiumBorder(),
//                             // minimumSize: Size(60, 30),
//                             // maximumSize: Size(110, 30),
//                             backgroundColor: Color(0xffbaa378)),
//                         onPressed: () {
//                           Navigator.push(context,
//                               MaterialPageRoute(builder: (context) => Cart()));
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20, right: 20),
//               child: ElevatedButton(
//                 child: Text(
//                   "PickUp Place",
//                   style: TextStyle(
//                       // fontSize: text * 15,
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 style: TextButton.styleFrom(
//                     shadowColor: Colors.black,
//                     minimumSize: Size(350, 40),
//                     maximumSize: Size(360, 40),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(4)),

//                     //StadiumBorder(),
//                     // side: BorderSide(width: 6),
//                     //minimumSize: Size(100, 10),
//                     backgroundColor: Color(0xffbaa378)),
//                 onPressed: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (context) => New()));
//                 },
//               ),
//             ),
//             Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20),
//                       child: Text(
//                         "Time Spane",
//                         style: TextStyle(fontSize: text * 15),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 20),
//                       child: Text(
//                         "17min",
//                         style: TextStyle(fontSize: text * 15),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20),
//                       child: Text(
//                         "Extra Toppings",
//                         style: TextStyle(fontSize: text * 15),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 20),
//                       child: Text(
//                         "20.00SR",
//                         style: TextStyle(fontSize: text * 15),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20),
//                       child: Text(
//                         "SubTotal",
//                         style: TextStyle(fontSize: text * 15),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 20),
//                       child: Text(
//                         "20.00SR",
//                         style: TextStyle(fontSize: text * 15),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20),
//                       child: Text(
//                         "Total",
//                         style: TextStyle(fontSize: text * 15),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 20),
//                       child: Text(
//                         "20.00SR",
//                         style: TextStyle(fontSize: text * 15),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20, right: 20),
//               child: ElevatedButton(
//                 child: Text(
//                   "Place Order",
//                   style: TextStyle(
//                       // fontSize: text * 15,
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 style: TextButton.styleFrom(
//                     shadowColor: Colors.black,
//                     minimumSize: Size(350, 40),
//                     maximumSize: Size(360, 40),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(4)),

//                     //StadiumBorder(),
//                     // side: BorderSide(width: 6),
//                     //minimumSize: Size(100, 10),
//                     backgroundColor: Color(0xffbaa378)),
//                 onPressed: () {
//                   // Scaffold.of(context).showSnackBar(new SnackBar(
//                   //   content: new Text("Sending Message"),
//                   // ));
//                   showToast();
//                   // Navigator.push(context,
//                   //     MaterialPageRoute(builder: (context) => paymentmethod()));
//                 },
//               ),
//             )
//           ],
//         ),
//         bottomNavigationBar: Bottomsheet());
//   }

//   void showToast() {
//     Fluttertoast.showToast(
//         msg: "Your Order is placed successfully",
//         toastLength: Toast.LENGTH_LONG,
//         gravity: ToastGravity.TOP,
//         //timeInSecForIosWeb: 4,
//         backgroundColor: Color(0xffbaa378),
//         textColor: Colors.white,
//         fontSize: 16.0);
//   }
// }
