// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, unnecessary_new
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:new_oct_25/Checkout.dart';
import 'package:new_oct_25/bottomsheet.dart';
import 'package:new_oct_25/minus.dart';
import './Home.dart';
import 'package:adobe_xd/page_link.dart';

import './Wishlist.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

import 'Iconawesomeheart.dart';

class Cart extends StatefulWidget {
  Cart({
    Key? key,
  }) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _currentIndex = 0;
  int _itemCount = 0;
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
                    color: Color(0xffbaa378)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Your Cart",
                style: TextStyle(
                    // fontSize: text * 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                // margin: EdgeInsets.all(12),
                height: height / 11.8,
                decoration: BoxDecoration(
                    border: Border.all(
                      //width: 2,
                      color: Colors.black,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16)),
                child: TextFormField(
                  maxLines: 2,
                  style: TextStyle(
                      // color: Colors.white,
                      // fontSize: 30,
                      //height: 1.5
                      ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    //fillColor: Colors.grey[300],
                    //suffixText: "@gmail.com",
                    prefixIcon: Icon(
                      Icons.timer_sharp,
                      size: 25,
                    ),
                    // labelStyle: TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 20,
                    //     fontWeight: FontWeight.bold),

                    //labelText: "Enter PickUp Time",
                    labelStyle:
                        TextStyle(color: Colors.black, fontSize: text * 15),
                    labelText: "Enter Pickup Time",
                    // border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(16)),
                    // labelText: "Email"
                  ),
                  // validator: (email) {
                  //   if (isEmailValid("email"))
                  //     return null;
                  //   else
                  //     return 'Enter a valid email address';
                  // },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 05),
              child: Container(
                // margin: EdgeInsets.all(12),
                height: height / 12.5,
                width: width / 4.5,
                decoration: BoxDecoration(
                    border: Border.all(
                      //width: 2,
                      color: Colors.black,
                    ),
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          // fontSize: 30,
                          //height: 1.5
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          //fillColor: Colors.grey[300],
                          //suffixText: "@gmail.com",
                          prefixIcon: Icon(
                            Icons.cast_outlined,
                            size: 25,
                          ),
                          // labelStyle: TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 15,
                          //     fontWeight: FontWeight.bold),

                          //labelText: "Enter PickUp Time",
                          labelStyle: TextStyle(
                              color: Colors.black, fontSize: text * 15),
                          labelText: "Coupon Code",
                          // border: OutlineInputBorder(
                          //     borderRadius: BorderRadius.circular(16)),
                          // labelText: "Email"
                        ),
                        // validator: (email) {
                        //   if (isEmailValid("email"))
                        //     return null;
                        //   else
                        //     return 'Enter a valid email address';
                        // },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text(
                          "Apply Code",
                          style: TextStyle(
                            // fontSize: text * 15,
                            color: Colors.black,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),

                            //StadiumBorder(),
                            // side: BorderSide(width: 6),
                            // minimumSize: Size(60, 30),
                            // maximumSize: Size(110, 30),
                            backgroundColor: Color(0xffbaa378)),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Cart()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Cart Items",
                style: TextStyle(
                    // fontSize: text * 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Column(children: [
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
                              style: TextStyle(
                                  // fontSize: text * 16
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 270, top: 10),
                        child: Text(
                          "20.00SR",
                          style: TextStyle(
                              // fontSize: text * 15
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130, top: 50),
                        child: Text(
                          "20.00SR",
                          style: TextStyle(
                              // fontSize: text * 16
                              ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 120, top: 70),
                          child: Minus()),
                      Padding(
                        padding: const EdgeInsets.only(left: 240, top: 70),
                        child: ElevatedButton(
                          child: Text(
                            "Remove",
                            style: TextStyle(
                              // fontSize: text * 15,
                              color: Colors.black,
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),

                              //StadiumBorder(),
                              // side: BorderSide(width: 6),
                              // minimumSize: Size(60, 30),
                              // maximumSize: Size(100, 30),
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
              )
            ]),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Container(
            //     height: height / 5.8,
            //     width: width / 5,
            //     decoration: BoxDecoration(
            //         border: Border.all(
            //           //width: 2,
            //           color: Colors.black,
            //         ),
            //         color: Colors.grey[350],
            //         borderRadius: BorderRadius.circular(16)),
            //     child: Row(
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.only(left: 10),
            //           child: ClipRRect(
            //             borderRadius: BorderRadius.circular(35),
            //             child: Image.asset(
            //               "assets/images/sheri-silver-1.png",
            //               width: width / 4,
            //               height: height / 7,
            //             ),
            //           ),
            //         ),
            //         Column(
            //           children: [
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.only(top: 20, left: 10),
            //                   child: Text(
            //                     "Vanilla Flavor",
            //                     style: TextStyle(fontSize: text * 20),
            //                   ),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsets.only(top: 20, left: 10),
            //                   child: Text(
            //                     "20.00SR",
            //                     style: TextStyle(fontSize: text * 15),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(
            //                 top: 20,
            //               ),
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Row(
            //                     children: <Widget>[
            //                       _itemCount != 0
            //                           ? new IconButton(
            //                               icon: CircleAvatar(
            //                                   radius: 10,
            //                                   backgroundColor: Colors.black,
            //                                   child: new Icon(
            //                                     Icons.remove,
            //                                     size: 15,
            //                                   )),
            //                               onPressed: () =>
            //                                   setState(() => _itemCount--),
            //                             )
            //                           : new Container(),
            //                       new Text(
            //                         _itemCount.toString(),
            //                         style: TextStyle(fontSize: text * 25),
            //                       ),
            //                       new IconButton(
            //                           icon: CircleAvatar(
            //                               radius: 10,
            //                               backgroundColor: Colors.black,
            //                               child: new Icon(
            //                                 Icons.add,
            //                                 size: 15,
            //                               )),
            //                           onPressed: () =>
            //                               setState(() => _itemCount++))
            //                     ],
            //                   ),
            //                   ElevatedButton(
            //                     child: Text(
            //                       "Remove",
            //                       style: TextStyle(
            //                           fontSize: text * 18,
            //                           color: Colors.black,
            //                           fontWeight: FontWeight.bold),
            //                     ),
            //                     style: TextButton.styleFrom(
            //                         shape: RoundedRectangleBorder(
            //                             borderRadius: BorderRadius.circular(12)),

            //                         //StadiumBorder(),
            //                         // side: BorderSide(width: 6),
            //                         //minimumSize: Size(100, 10),
            //                         backgroundColor: Color(0xffbaa378)),
            //                     onPressed: () {
            //                       Navigator.push(
            //                           context,
            //                           MaterialPageRoute(
            //                               builder: (context) => Cart()));
            //                     },
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Total",
                        style: TextStyle(fontSize: text * 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "20.00SR",
                        style: TextStyle(fontSize: text * 15),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        "SubTotal",
                        style: TextStyle(fontSize: text * 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 20),
                      child: Text(
                        "20.00SR",
                        style: TextStyle(fontSize: text * 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                width: width / 1.0,
                height: 80,
                color: Colors.black87,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ConfirmationSlider(
                      height: 54.0,
                      width: 250,
                      backgroundColor: Color(0xffbaa378),
                      foregroundColor: Colors.black87,
                      backgroundShape: BorderRadius.circular(10),
                      foregroundShape: BorderRadius.circular(16),
                      text: "Swipe To Order",
                      textStyle: TextStyle(
                          fontSize: text * 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      onConfirmation: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Checkout())),
                    ),
                  ),
                ),
              ),
            )
            // Center(
            //   child: Container(
            //     width: MediaQuery.of(context).size.width - 100,
            //     height: height / 19,
            //     decoration: BoxDecoration(
            //         color: Colors.blue, borderRadius: BorderRadius.circular(30)),
            //     child: Row(
            //       children: [Expanded(child: Text("Swipe"))],
            //     ),
            //   ),
            // )
            //     Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     SwipingButton(
            //       text: "SWIPE ME!",
            //       onSwipeCallback: () => print("I'M SWIPED!"),
            //     ),
            //   ],
            // ),
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

const String _svg_mh =
    '<svg viewBox="3.0 3.0 25.0 25.0" ><path  d="M 28.003662109375 15.5018310546875 C 28.003662109375 22.40640068054199 22.40640068054199 28.003662109375 15.5018310546875 28.003662109375 C 8.597260475158691 28.003662109375 3 22.40640068054199 3 15.5018310546875 C 3 8.597260475158691 8.597260475158691 3 15.5018310546875 3 C 22.40640068054199 3 28.003662109375 8.597260475158691 28.003662109375 15.5018310546875 Z" fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_c9jnwd =
    '<svg viewBox="15.5 8.0 5.0 10.0" ><path transform="translate(-2.5, -1.0)" d="M 18 9 L 18 16.5010986328125 L 23.000732421875 19.00146484375" fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_g7czog =
    '<svg viewBox="14.0 50.0 31.1 29.3" ><path transform="translate(8.38, 43.67)" d="M 33.98604965209961 18.15213394165039 L 15.10221576690674 18.15213394165039 L 22.42631912231445 11.14570140838623 C 23.47640228271484 10.04267406463623 23.47640228271484 8.260181427001953 22.42631912231445 7.157154083251953 C 21.37623596191406 6.054126739501953 19.67316055297852 6.054126739501953 18.61425399780273 7.157154083251953 L 6.419180393218994 18.98161125183105 C 5.889727115631104 19.49341583251953 5.625000476837158 20.19052886962891 5.625000476837158 20.95823669433594 L 5.625000476837158 20.9935359954834 C 5.625000476837158 21.76124382019043 5.889727115631104 22.45835494995117 6.419180393218994 22.97016143798828 L 18.60543060302734 34.79462051391602 C 19.66433715820312 35.89764785766602 21.36741256713867 35.89764785766602 22.4174919128418 34.79462051391602 C 23.46757507324219 33.69159317016602 23.46757507324219 31.90909767150879 22.4174919128418 30.80607032775879 L 15.09338855743408 23.79963874816895 L 33.97722244262695 23.79963874816895 C 35.4685173034668 23.79963874816895 36.67743301391602 22.53777694702148 36.67743301391602 20.97588920593262 C 36.68626022338867 19.38752365112305 35.47734069824219 18.15213394165039 33.98604965209961 18.15213394165039 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nvekgk =
    '<svg viewBox="47.0 125.0 26.4 30.8" ><path transform="translate(44.43, 122.8)" d="M 27.84170722961426 8.745018005371094 C 28.16304588317871 9.066356658935547 28.4384937286377 9.502463340759277 28.66805076599121 10.0533390045166 C 28.89760780334473 10.60421466827393 29.01236534118652 11.10917854309082 29.01232528686523 11.5682315826416 L 29.01232528686523 31.39944076538086 C 29.01232528686523 31.85849380493164 28.85165596008301 32.24868774414062 28.53031730651855 32.57002639770508 C 28.2089786529541 32.89136505126953 27.81878280639648 33.05203247070312 27.3597297668457 33.05203628540039 L 4.22332763671875 33.05203628540039 C 3.764274835586548 33.05203628540039 3.374078989028931 32.89136505126953 3.052740097045898 32.57002639770508 C 2.731401205062866 32.24868774414062 2.570731639862061 31.85848999023438 2.570731639862061 31.39943885803223 L 2.570731639862061 3.856096982955933 C 2.570731639862061 3.39704418182373 2.731401205062866 3.006848573684692 3.052740097045898 2.68550968170166 C 3.374078989028931 2.364170789718628 3.764274835586548 2.203501462936401 4.22332763671875 2.203501224517822 L 19.6475944519043 2.203501224517822 C 20.10664749145508 2.203501224517822 20.61161231994629 2.318269491195679 21.1624870300293 2.547805786132812 C 21.7133617401123 2.777342081069946 22.14947891235352 3.052779912948608 22.47083854675293 3.374118804931641 L 27.84170722961426 8.745018005371094 Z M 20.19844055175781 4.544646263122559 L 20.19844055175781 11.01732635498047 L 26.67111968994141 11.01732635498047 C 26.55636215209961 10.68451976776123 26.43013572692871 10.44924926757812 26.29244232177734 10.31151580810547 L 20.90422058105469 4.923354148864746 C 20.76650619506836 4.785640239715576 20.53123664855957 4.659404277801514 20.19841003417969 4.544646263122559 Z M 26.80882263183594 30.84853553771973 L 26.80882263183594 13.22079658508301 L 19.64756393432617 13.22079658508301 C 19.18851089477539 13.22079658508301 18.79831504821777 13.06012725830078 18.47697639465332 12.73878860473633 C 18.15563774108887 12.41744995117188 17.99496841430664 12.02725410461426 17.99496841430664 11.56820106506348 L 17.99496841430664 4.406942367553711 L 4.774172306060791 4.406942367553711 L 4.774172306060791 30.84853553771973 L 26.80888366699219 30.84853553771973 Z M 10.833740234375 15.42426776885986 C 10.9255428314209 15.29802131652832 11.04604530334473 15.22629261016846 11.19524669647217 15.20908069610596 C 11.34444808959961 15.19186878204346 11.48216247558594 15.22916412353516 11.60838794708252 15.32096672058105 L 12.48633575439453 15.97511196136475 C 12.61258220672607 16.06691360473633 12.68431091308594 16.18741607666016 12.70152282714844 16.33661842346191 C 12.71873474121094 16.48582077026367 12.68143939971924 16.62353324890137 12.58963680267334 16.74975967407227 L 9.456582069396973 20.93289947509766 L 12.58963680267334 25.11603927612305 C 12.68143939971924 25.24228477478027 12.71873474121094 25.3799991607666 12.70152282714844 25.5291805267334 C 12.68431091308594 25.6783618927002 12.61258220672607 25.79886436462402 12.48633575439453 25.89068603515625 L 11.60838794708252 26.54483222961426 C 11.48214149475098 26.63663482666016 11.34442806243896 26.67392921447754 11.19524669647217 26.65671920776367 C 11.04606533050537 26.6395092010498 10.92556285858154 26.56777954101562 10.833740234375 26.44153213500977 L 6.943240165710449 21.25994110107422 C 6.782570838928223 21.04189300537109 6.782570838928223 20.82384490966797 6.943240165710449 20.60579490661621 L 10.833740234375 15.42426776885986 Z M 24.63981628417969 20.60585784912109 C 24.80048561096191 20.82390594482422 24.80048561096191 21.04195404052734 24.63981628417969 21.2600040435791 L 20.74931526184082 26.44159317016602 C 20.65753173828125 26.56783866882324 20.53703117370605 26.63956832885742 20.38780975341797 26.65678024291992 C 20.23858833312988 26.67399215698242 20.10087585449219 26.63669586181641 19.97466850280762 26.54489326477051 L 19.09671974182129 25.8907470703125 C 18.97047424316406 25.7989444732666 18.89874458312988 25.67844390869141 18.88153266906738 25.52924156188965 C 18.86432075500488 25.38003921508789 18.9016170501709 25.2423267364502 18.9934196472168 25.1161003112793 L 22.12647438049316 20.93296051025391 L 18.9934196472168 16.74982070922852 C 18.90163612365723 16.62357521057129 18.86434173583984 16.48586082458496 18.88153266906738 16.33667945861816 C 18.89872360229492 16.18749809265137 18.9704532623291 16.06699562072754 19.09671974182129 15.975172996521 L 19.97466850280762 15.3210277557373 C 20.10091400146484 15.22922515869141 20.23862838745117 15.19192981719971 20.38780975341797 15.20914173126221 C 20.53699111938477 15.22635364532471 20.65749359130859 15.29808235168457 20.74931526184082 15.42432880401611 L 24.63981628417969 20.60585784912109 Z M 13.96679496765137 28.54179382324219 C 13.81759357452393 28.51883888244629 13.69996356964111 28.44423675537109 13.61390495300293 28.31799125671387 C 13.52784633636475 28.19174575805664 13.4962854385376 28.05403137207031 13.51922035217285 27.90485000610352 L 15.89482879638672 13.59953498840332 C 15.91778469085693 13.45033359527588 15.99239540100098 13.33270359039307 16.11866188049316 13.24664497375488 C 16.24492835998535 13.1605863571167 16.38263130187988 13.12902545928955 16.53177261352539 13.1519603729248 L 17.61629104614258 13.32409763336182 C 17.76551246643066 13.34705352783203 17.88314247131348 13.42165374755859 17.96918106079102 13.54790019989014 C 18.05521965026855 13.67414665222168 18.0867805480957 13.81186008453369 18.06386566162109 13.96104145050049 L 15.68825721740723 28.266357421875 C 15.66530132293701 28.41555976867676 15.59070110321045 28.53318977355957 15.46445465087891 28.61924743652344 C 15.33820819854736 28.7053050994873 15.20049476623535 28.73686790466309 15.05131340026855 28.71393203735352 L 13.96679496765137 28.54179382324219 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ouaxz6 =
    '<svg viewBox="256.0 265.0 128.0 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(256.0, 265.0)" d="M 8 0 L 120 0 C 124.4182815551758 0 128 3.581721782684326 128 8 L 128 35 C 128 39.41827774047852 124.4182815551758 43 120 43 L 8 43 C 3.581721782684326 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 3.581721782684326 0 8 0 Z" fill="#baa378" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_x7d9jt =
    '<svg viewBox="36.0 402.0 355.0 126.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="4" stdDeviation="9"/></filter></defs><path transform="translate(36.0, 402.0)" d="M 10 0 L 345 0 C 350.5228576660156 0 355 4.477152347564697 355 10 L 355 116 C 355 121.5228500366211 350.5228576660156 126 345 126 L 10 126 C 4.477152347564697 126 0 121.5228500366211 0 116 L 0 10 C 0 4.477152347564697 4.477152347564697 0 10 0 Z" fill="#eeeeee" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_hwyo8 =
    '<svg viewBox="259.0 472.0 128.0 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(259.0, 472.0)" d="M 8 0 L 120 0 C 124.4182815551758 0 128 3.581721782684326 128 8 L 128 35 C 128 39.41827774047852 124.4182815551758 43 120 43 L 8 43 C 3.581721782684326 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 3.581721782684326 0 8 0 Z" fill="#baa378" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
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
const String _svg_t4ec1q =
    '<svg viewBox="5.0 0.0 1.0 10.0" ><path transform="translate(-12.99, -7.5)" d="M 18 7.500000476837158 L 18 17.51696014404297" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_s0unte =
    '<svg viewBox="0.0 5.0 10.0 1.0" ><path transform="translate(-7.5, -12.99)" d="M 7.500000476837158 18 L 17.51696014404297 18" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_ggrqju =
    '<svg viewBox="287.5 27.5 12.7 1.0" ><path transform="translate(280.0, 9.5)" d="M 7.5 18 L 20.2078857421875 18" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
