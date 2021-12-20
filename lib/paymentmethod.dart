import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
// import 'package:newoct/Checkout.dart';
// import 'package:newoct/adddescription.dart';

import './cardinfo.dart';
import 'package:adobe_xd/page_link.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'Cart.dart';
import 'Checkout.dart';
import 'Home.dart';
import 'Wishlist.dart';

class paymentmethod extends StatefulWidget {
  paymentmethod({
    Key? key,
  }) : super(key: key);

  @override
  State<paymentmethod> createState() => _paymentmethodState();
}

class _paymentmethodState extends State<paymentmethod> {
  bool _hasBeenPressed = false;
  bool _hadBeenPressed = false;
  bool _wasBeenPressed = false;
  bool _isBeenPressed = false;
  int _currentIndex = 1;
  // bool _isBeenPressed = false;
  // bool _wasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      backgroundColor: const Color(0xfffdfdfd),
      body: ListView(
        children: [
          Column(
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
                      fontSize: text * 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffbaa378)),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 95),
                    child: Text(
                      "Payment Method",
                      style: TextStyle(
                          fontSize: text * 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Text(
                    "Coose Your Desired Payment Method",
                    style: TextStyle(
                        fontSize: text * 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      height: height / 8.9,
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
                                    "assets/images/visa.png",
                                    width: width / 4,
                                    height: height / 10,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 130, top: 10),
                                    child: Text(
                                      "12345678",
                                      style: TextStyle(fontSize: text * 25),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 130),
                                    child: Text(
                                      "Expiry 01/26",
                                      style: TextStyle(fontSize: text * 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 210,
                                    ),
                                    child: Container(
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      width: width / 20,
                                      height: height / 39,
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        child: new Text(
                                          '',
                                        ),
                                        textColor: Color(0xffbaa378),
                                        // 2
                                        color: _hasBeenPressed
                                            ? Colors.white70
                                            : Colors.green,
                                        // 3
                                        onPressed: () => {
                                          setState(() {
                                            _hasBeenPressed = !_hasBeenPressed;
                                            _isBeenPressed = true;
                                            _wasBeenPressed = true;
                                            _hadBeenPressed = true;
                                          })
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ))),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      height: height / 8.9,
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
                                    "assets/images/omni.jpg",
                                    width: width / 4,
                                    height: height / 10,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 130, top: 10),
                                    child: Text(
                                      "12345678",
                                      style: TextStyle(fontSize: text * 25),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 130),
                                    child: Text(
                                      "Expiry 01/26",
                                      style: TextStyle(fontSize: text * 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 210,
                                    ),
                                    child: Container(
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      width: width / 20,
                                      height: height / 39,
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        child: new Text(
                                          '',
                                        ),
                                        textColor: Color(0xffbaa378),
                                        // 2
                                        color: _isBeenPressed
                                            ? Colors.white70
                                            : Colors.green,
                                        // 3
                                        onPressed: () => {
                                          setState(() {
                                            _isBeenPressed = !_isBeenPressed;
                                            _hasBeenPressed = true;
                                            _wasBeenPressed = true;
                                            _hadBeenPressed = true;
                                          })
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ))),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      height: height / 8.9,
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
                                    "assets/images/master.png",
                                    width: width / 4,
                                    height: height / 10,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 130, top: 10),
                                    child: Text(
                                      "12345678",
                                      style: TextStyle(fontSize: text * 25),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 130),
                                    child: Text(
                                      "Expiry 01/26",
                                      style: TextStyle(fontSize: text * 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 210,
                                    ),
                                    child: Container(
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      width: width / 20,
                                      height: height / 39,
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        child: new Text(
                                          '',
                                        ),
                                        textColor: Color(0xffbaa378),
                                        // 2
                                        color: _hadBeenPressed
                                            ? Colors.white70
                                            : Colors.green,
                                        // 3
                                        onPressed: () => {
                                          setState(() {
                                            _hadBeenPressed = !_hadBeenPressed;
                                            _isBeenPressed = true;
                                            _wasBeenPressed = true;
                                            _hasBeenPressed = true;
                                          })
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ))),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      height: height / 8.9,
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
                                    "assets/images/cash.png",
                                    width: width / 4,
                                    height: height / 10,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 130, top: 10),
                                    child: Text(
                                      "12345678",
                                      style: TextStyle(fontSize: text * 25),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 130),
                                    child: Text(
                                      "Expiry 01/26",
                                      style: TextStyle(fontSize: text * 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 210,
                                    ),
                                    child: Container(
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      width: width / 20,
                                      height: height / 39,
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        child: new Text(
                                          '',
                                        ),
                                        textColor: Color(0xffbaa378),
                                        // 2
                                        color: _wasBeenPressed
                                            ? Colors.white70
                                            : Colors.green,
                                        // 3
                                        onPressed: () => {
                                          setState(() {
                                            _wasBeenPressed = !_wasBeenPressed;
                                            _isBeenPressed = true;
                                            _hasBeenPressed = true;
                                            _hadBeenPressed = true;
                                          })
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ))),
              ElevatedButton(
                child: Text(
                  "Add Payment Method",
                  style: TextStyle(
                      fontSize: text * 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                style: TextButton.styleFrom(
                    shadowColor: Colors.black,
                    minimumSize: Size(240, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),

                    //StadiumBorder(),
                    // side: BorderSide(width: 6),
                    //minimumSize: Size(100, 10),
                    backgroundColor: Color(0xffbaa378)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => cardinfo()));
                },
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25.0),
          topLeft: Radius.circular(25.0),
        ),
        child: BottomNavigationBar(
          onTap: onTabTapped, // new
          currentIndex: _currentIndex,
          backgroundColor: Color(0xffbaa378),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: text * 15),

          unselectedItemColor: Colors.black,
          iconSize: 30,

          elevation: 5,
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Icon(Icons.home)),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cart()),
                    );
                  },
                  child: Icon(
                    Icons.store_mall_directory_outlined,
                    color: Colors.black,
                  ),
                ),
                title: Text(
                  'Cart',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Wishlist()),
                  );
                },
                child: Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                ),
              ),
              title: Text(
                'Favourite',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.white,
            ),
            // BottomNavigationBarItem(
            //   icon: InkWell(
            //     onTap: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => Profile()),
            //       );
            //     },
            //     child: Icon(
            //       Icons.person,
            //       color: Colors.black,
            //     ),
            //   ),
            //   title: Text(
            //     'Profile',
            //   ),
            //   backgroundColor: Colors.white,
            // ),
          ],
          // type: BottomNavigationBarType.shifting,
          // currentIndex: _selectedIndex,
          // selectedItemColor: Colors.black,
          // iconSize: 40,
          // onTap: _onItemTapped,
          // elevation: 5
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

const String _svg_czp7x7 =
    '<svg viewBox="272.5 854.5 32.8 28.7" ><path transform="translate(272.5, 852.25)" d="M 29.60227584838867 4.209194660186768 C 26.0932788848877 1.218863964080811 20.87460708618164 1.756739139556885 17.65375900268555 5.080039978027344 L 16.39231300354004 6.379905223846436 L 15.13086700439453 5.080039978027344 C 11.91642189025879 1.756739139556885 6.691347599029541 1.218863964080811 3.18235182762146 4.209194660186768 C -0.8389065861701965 7.641351222991943 -1.050214886665344 13.80130386352539 2.54842734336853 17.52160835266113 L 14.93876838684082 30.31535720825195 C 15.73917865753174 31.14138031005859 17.03904342651367 31.14138031005859 17.83945465087891 30.31535720825195 L 30.22979545593262 17.52161026000977 C 33.83484268188477 13.80130577087402 33.62353134155273 7.641353130340576 29.60227394104004 4.209196090698242 Z" fill="none" stroke="#000000" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u0got =
    '<svg viewBox="188.4 884.3 35.0 37.5" ><path transform="translate(962.44, 238.26)" d="M -761.8372192382812 683.532958984375 L -768.9422607421875 683.5321655273438 C -770.2852172851562 683.5321655273438 -771.550048828125 683.0216064453125 -772.5034790039062 682.0949096679688 C -773.4544067382812 681.1722412109375 -774.0001220703125 679.8889770507812 -774.0001220703125 678.5750732421875 L -774.0001220703125 659.5882568359375 C -774.0001220703125 659.1163330078125 -773.7789306640625 658.6718139648438 -773.4024658203125 658.3873901367188 L -757.4158935546875 646.3045654296875 C -756.8787231445312 645.898681640625 -756.1375122070312 645.8985595703125 -755.600341796875 646.3047485351562 L -739.6145629882812 658.387451171875 C -739.2382202148438 658.6718139648438 -739.0169067382812 659.1163330078125 -739.0169067382812 659.5882568359375 L -739.0169067382812 678.5750732421875 C -739.0169067382812 679.888916015625 -739.562744140625 681.1721801757812 -740.5143432617188 682.095703125 C -741.4671630859375 683.021728515625 -742.73193359375 683.5321655273438 -744.0750122070312 683.5321655273438 L -751.1798095703125 683.5321655273438 C -752.0111694335938 683.5321655273438 -752.6851196289062 682.8580932617188 -752.6851196289062 682.0266723632812 L -752.6851196289062 666.2714233398438 L -760.33203125 666.2714233398438 L -760.33203125 682.0266723632812 C -760.33203125 682.8580932617188 -761.005859375 683.532958984375 -761.8372192382812 683.532958984375 Z M -770.9894409179688 660.3374633789062 L -770.9894409179688 678.5750732421875 C -770.9894409179688 679.07958984375 -770.77685546875 679.5753784179688 -770.4058837890625 679.935302734375 C -770.0166625976562 680.3134765625 -769.4970703125 680.5213012695312 -768.9420166015625 680.5213012695312 L -763.3425903320312 680.522216796875 L -763.3425903320312 664.7661743164062 C -763.3425903320312 663.9347534179688 -762.668701171875 663.2608032226562 -761.8372192382812 663.2608032226562 L -751.1798095703125 663.2608032226562 C -750.348388671875 663.2608032226562 -749.6744384765625 663.9347534179688 -749.6744384765625 664.7661743164062 L -749.6744384765625 680.5213012695312 L -744.0750122070312 680.5213012695312 C -743.5198364257812 680.5213012695312 -743.000244140625 680.3134765625 -742.61181640625 679.9359741210938 C -742.2402954101562 679.5753784179688 -742.0274658203125 679.07958984375 -742.0274658203125 678.5750732421875 L -742.0274658203125 660.3374633789062 L -756.5081176757812 649.3923950195312 L -770.9894409179688 660.3374633789062 Z" fill="#2a2a2a" stroke="none" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_pvhxug =
    '<svg viewBox="0.0 0.0 35.7 3.9" ><path transform="translate(-3770.03, -1874.76)" d="M 3803.7158203125 1878.69921875 L 3772.0048828125 1878.69921875 C 3770.91748046875 1878.69921875 3770.033447265625 1877.81494140625 3770.033447265625 1876.727783203125 C 3770.033447265625 1875.640380859375 3770.91748046875 1874.755859375 3772.0048828125 1874.755859375 L 3803.7158203125 1874.755859375 C 3804.802734375 1874.755859375 3805.687744140625 1875.640380859375 3805.687744140625 1876.727783203125 C 3805.687744140625 1877.81494140625 3804.802734375 1878.69921875 3803.7158203125 1878.69921875 Z M 3772.0048828125 1876.097534179688 C 3771.65771484375 1876.097534179688 3771.374755859375 1876.380004882812 3771.374755859375 1876.727783203125 C 3771.374755859375 1877.074951171875 3771.65771484375 1877.357543945312 3772.0048828125 1877.357543945312 L 3803.7158203125 1877.357543945312 C 3804.062744140625 1877.357543945312 3804.345703125 1877.074951171875 3804.345703125 1876.727783203125 C 3804.345703125 1876.380004882812 3804.062744140625 1876.097534179688 3803.7158203125 1876.097534179688 L 3772.0048828125 1876.097534179688 Z" fill="#161615" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_kywfw =
    '<svg viewBox="0.0 0.0 13.8 14.8" ><path transform="translate(-3788.62, -1800.13)" d="M 3791.353759765625 1814.902587890625 C 3791.215087890625 1814.902587890625 3791.074462890625 1814.855346679688 3790.9599609375 1814.75830078125 C 3790.703369140625 1814.540649414062 3790.671875 1814.155395507812 3790.889404296875 1813.89892578125 L 3801.19970703125 1801.72314453125 C 3801.259521484375 1801.6513671875 3801.2509765625 1801.5439453125 3801.1796875 1801.4833984375 L 3801.066650390625 1801.387939453125 C 3800.9951171875 1801.327270507812 3800.8876953125 1801.336303710938 3800.826904296875 1801.407592773438 L 3789.696533203125 1814.551391601562 C 3789.479248046875 1814.80859375 3789.094482421875 1814.840576171875 3788.837158203125 1814.622680664062 C 3788.580322265625 1814.405029296875 3788.548583984375 1814.020385742188 3788.765625 1813.76318359375 L 3799.89599609375 1800.619262695312 C 3800.39111328125 1800.034912109375 3801.27001953125 1799.962036132812 3801.854736328125 1800.456909179688 L 3801.96728515625 1800.552368164062 C 3802.552001953125 1801.0478515625 3802.625244140625 1801.92626953125 3802.130126953125 1802.511108398438 L 3791.819580078125 1814.68701171875 C 3791.69970703125 1814.829223632812 3791.527099609375 1814.902587890625 3791.353759765625 1814.902587890625 Z" fill="#161615" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_goywvl =
    '<svg viewBox="0.0 0.0 13.8 14.8" ><path transform="translate(-3871.54, -1800.12)" d="M 3882.6396484375 1814.8984375 C 3882.46630859375 1814.8984375 3882.29443359375 1814.824829101562 3882.173828125 1814.682495117188 L 3871.86376953125 1802.506958007812 C 3871.36865234375 1801.921752929688 3871.44189453125 1801.043579101562 3872.0263671875 1800.548095703125 L 3872.138671875 1800.45263671875 C 3872.4228515625 1800.212646484375 3872.78173828125 1800.09716796875 3873.15185546875 1800.128295898438 C 3873.52197265625 1800.159057617188 3873.85791015625 1800.331909179688 3874.09765625 1800.615112304688 L 3885.22802734375 1813.758911132812 C 3885.4453125 1814.015991210938 3885.41357421875 1814.400634765625 3885.15625 1814.618286132812 C 3884.89892578125 1814.8359375 3884.51416015625 1814.804321289062 3884.296875 1814.547241210938 L 3873.16650390625 1801.4033203125 C 3873.12939453125 1801.359008789062 3873.0830078125 1801.346313476562 3873.05126953125 1801.343872070312 C 3873.01904296875 1801.34130859375 3872.97119140625 1801.345581054688 3872.9267578125 1801.383544921875 L 3872.814453125 1801.479125976562 C 3872.7431640625 1801.539428710938 3872.73388671875 1801.647216796875 3872.79443359375 1801.718505859375 L 3883.1044921875 1813.894409179688 C 3883.32177734375 1814.151123046875 3883.29052734375 1814.536254882812 3883.03369140625 1814.75390625 C 3882.9189453125 1814.850952148438 3882.77880859375 1814.8984375 3882.6396484375 1814.8984375 Z" fill="#161615" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_em51yd =
    '<svg viewBox="0.0 0.0 32.2 12.2" ><path transform="translate(-3779.6, -1889.46)" d="M 3807.34765625 1901.711181640625 L 3783.96044921875 1901.711181640625 C 3783.087890625 1901.711181640625 3782.33935546875 1901.1181640625 3782.14013671875 1900.269287109375 L 3779.6015625 1889.462890625 L 3811.78564453125 1889.524169921875 L 3809.1669921875 1900.274658203125 C 3808.96875 1901.1181640625 3808.22021484375 1901.711181640625 3807.34765625 1901.711181640625 Z M 3781.29541015625 1890.8076171875 L 3783.44677734375 1899.96240234375 C 3783.50244140625 1900.202392578125 3783.7138671875 1900.36962890625 3783.96044921875 1900.36962890625 L 3807.34765625 1900.36962890625 C 3807.59423828125 1900.36962890625 3807.8056640625 1900.202392578125 3807.8623046875 1899.96240234375 L 3810.0791015625 1890.8623046875 L 3781.29541015625 1890.8076171875 Z" fill="#161615" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_xcofn =
    '<svg viewBox="0.0 0.0 27.0 1.3" ><path transform="translate(-3793.75, -1902.06)" d="M 3820.118408203125 1903.397583007812 L 3794.42431640625 1903.397583007812 C 3794.053955078125 1903.397583007812 3793.75341796875 1903.096923828125 3793.75341796875 1902.726684570312 C 3793.75341796875 1902.356323242188 3794.053955078125 1902.0556640625 3794.42431640625 1902.0556640625 L 3820.118408203125 1902.0556640625 C 3820.48876953125 1902.0556640625 3820.789306640625 1902.356323242188 3820.789306640625 1902.726684570312 C 3820.789306640625 1903.096923828125 3820.48876953125 1903.397583007812 3820.118408203125 1903.397583007812 Z" fill="#161615" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tjhu8 =
    '<svg viewBox="0.0 0.0 25.3 1.3" ><path transform="translate(-3798.45, -1919.61)" d="M 3823.10986328125 1920.952392578125 L 3799.123046875 1920.952392578125 C 3798.752685546875 1920.952392578125 3798.45263671875 1920.65185546875 3798.45263671875 1920.281494140625 C 3798.45263671875 1919.910888671875 3798.752685546875 1919.61083984375 3799.123046875 1919.61083984375 L 3823.10986328125 1919.61083984375 C 3823.480224609375 1919.61083984375 3823.780517578125 1919.910888671875 3823.780517578125 1920.281494140625 C 3823.780517578125 1920.65185546875 3823.480224609375 1920.952392578125 3823.10986328125 1920.952392578125 Z" fill="#161615" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_xov3p9 =
    '<svg viewBox="0.0 0.0 23.3 1.3" ><path transform="translate(-3804.05, -1937.17)" d="M 3826.67236328125 1938.507446289062 L 3804.71875 1938.507446289062 C 3804.347900390625 1938.507446289062 3804.04833984375 1938.207153320312 3804.04833984375 1937.83642578125 C 3804.04833984375 1937.466064453125 3804.347900390625 1937.165771484375 3804.71875 1937.165771484375 L 3826.67236328125 1937.165771484375 C 3827.04296875 1937.165771484375 3827.343505859375 1937.466064453125 3827.343505859375 1937.83642578125 C 3827.343505859375 1938.207153320312 3827.04296875 1938.507446289062 3826.67236328125 1938.507446289062 Z" fill="#161615" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_g9xtvp =
    '<svg viewBox="28.0 23.0 25.0 23.6" ><path transform="translate(-3340.12, -946.35)" d="M 3390.968505859375 978.8743286132812 L 3375.754638671875 978.8743286132812 L 3381.654541015625 973.23046875 C 3382.50048828125 972.32666015625 3382.50048828125 970.9208984375 3381.654541015625 970.0170288085938 C 3380.862060546875 969.1688232421875 3379.531982421875 969.1236572265625 3378.684326171875 969.9163818359375 C 3378.64990234375 969.9486083984375 3378.615966796875 969.982421875 3378.583740234375 970.0170288085938 L 3368.761474609375 979.54296875 C 3368.338623046875 979.962646484375 3368.106689453125 980.5394287109375 3368.121826171875 981.1355590820312 L 3368.121826171875 981.1637573242188 C 3368.106689453125 981.7598876953125 3368.338623046875 982.3358154296875 3368.761474609375 982.75634765625 L 3378.578125 992.2814331054688 C 3379.370849609375 993.12890625 3380.700927734375 993.1740112304688 3381.549072265625 992.38134765625 C 3381.583740234375 992.34912109375 3381.61669921875 992.3161010742188 3381.649169921875 992.2814331054688 C 3382.494873046875 991.3775634765625 3382.494873046875 989.9718627929688 3381.649169921875 989.0680541992188 L 3375.7490234375 983.4241943359375 L 3390.96142578125 983.4241943359375 C 3392.190673828125 983.39599609375 3393.163818359375 982.3777465820312 3393.136474609375 981.1492919921875 C 3393.177734375 979.9336547851562 3392.225341796875 978.9154052734375 3391.009765625 978.8751220703125 L 3390.968505859375 978.8743286132812 Z" fill="#040405" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';

const String _svg_g7czog =
    '<svg viewBox="14.0 50.0 31.1 29.3" ><path transform="translate(8.38, 43.67)" d="M 33.98604965209961 18.15213394165039 L 15.10221576690674 18.15213394165039 L 22.42631912231445 11.14570140838623 C 23.47640228271484 10.04267406463623 23.47640228271484 8.260181427001953 22.42631912231445 7.157154083251953 C 21.37623596191406 6.054126739501953 19.67316055297852 6.054126739501953 18.61425399780273 7.157154083251953 L 6.419180393218994 18.98161125183105 C 5.889727115631104 19.49341583251953 5.625000476837158 20.19052886962891 5.625000476837158 20.95823669433594 L 5.625000476837158 20.9935359954834 C 5.625000476837158 21.76124382019043 5.889727115631104 22.45835494995117 6.419180393218994 22.97016143798828 L 18.60543060302734 34.79462051391602 C 19.66433715820312 35.89764785766602 21.36741256713867 35.89764785766602 22.4174919128418 34.79462051391602 C 23.46757507324219 33.69159317016602 23.46757507324219 31.90909767150879 22.4174919128418 30.80607032775879 L 15.09338855743408 23.79963874816895 L 33.97722244262695 23.79963874816895 C 35.4685173034668 23.79963874816895 36.67743301391602 22.53777694702148 36.67743301391602 20.97588920593262 C 36.68626022338867 19.38752365112305 35.47734069824219 18.15213394165039 33.98604965209961 18.15213394165039 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e8ayrl =
    '<svg viewBox="37.0 162.0 355.0 202.9" ><defs><filter id="shadow"><feDropShadow dx="0" dy="4" stdDeviation="9"/></filter></defs><path transform="translate(37.0, 162.0)" d="M 10 0 L 345 0 C 350.5228576660156 0 355 7.209450721740723 355 16.10276031494141 L 355 186.7920074462891 C 355 195.6853332519531 350.5228576660156 202.894775390625 345 202.894775390625 L 10 202.894775390625 C 4.477152347564697 202.894775390625 0 195.6853332519531 0 186.7920074462891 L 0 16.10276031494141 C 0 7.209450721740723 4.477152347564697 0 10 0 Z" fill="#eeeeee" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_urncje =
    '<svg viewBox="241.0 309.0 128.0 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(241.0, 309.0)" d="M 8 0 L 120 0 C 124.4182815551758 0 128 3.581721782684326 128 8 L 128 35 C 128 39.41827774047852 124.4182815551758 43 120 43 L 8 43 C 3.581721782684326 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 3.581721782684326 0 8 0 Z" fill="#baa378" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
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
const String _svg_cczp7x7 =
    '<svg viewBox="272.5 854.5 32.8 28.7" ><path transform="translate(272.5, 852.25)" d="M 29.60227584838867 4.209194660186768 C 26.0932788848877 1.218863964080811 20.87460708618164 1.756739139556885 17.65375900268555 5.080039978027344 L 16.39231300354004 6.379905223846436 L 15.13086700439453 5.080039978027344 C 11.91642189025879 1.756739139556885 6.691347599029541 1.218863964080811 3.18235182762146 4.209194660186768 C -0.8389065861701965 7.641351222991943 -1.050214886665344 13.80130386352539 2.54842734336853 17.52160835266113 L 14.93876838684082 30.31535720825195 C 15.73917865753174 31.14138031005859 17.03904342651367 31.14138031005859 17.83945465087891 30.31535720825195 L 30.22979545593262 17.52161026000977 C 33.83484268188477 13.80130577087402 33.62353134155273 7.641353130340576 29.60227394104004 4.209196090698242 Z" fill="none" stroke="#000000" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t4ec1q =
    '<svg viewBox="5.0 0.0 1.0 10.0" ><path transform="translate(-12.99, -7.5)" d="M 18 7.500000476837158 L 18 17.51696014404297" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_s0unte =
    '<svg viewBox="0.0 5.0 10.0 1.0" ><path transform="translate(-7.5, -12.99)" d="M 7.500000476837158 18 L 17.51696014404297 18" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_ggrqju =
    '<svg viewBox="287.5 27.5 12.7 1.0" ><path transform="translate(280.0, 9.5)" d="M 7.5 18 L 20.2078857421875 18" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_nvekgk =
    '<svg viewBox="47.0 125.0 26.4 30.8" ><path transform="translate(44.43, 122.8)" d="M 27.84170722961426 8.745018005371094 C 28.16304588317871 9.066356658935547 28.4384937286377 9.502463340759277 28.66805076599121 10.0533390045166 C 28.89760780334473 10.60421466827393 29.01236534118652 11.10917854309082 29.01232528686523 11.5682315826416 L 29.01232528686523 31.39944076538086 C 29.01232528686523 31.85849380493164 28.85165596008301 32.24868774414062 28.53031730651855 32.57002639770508 C 28.2089786529541 32.89136505126953 27.81878280639648 33.05203247070312 27.3597297668457 33.05203628540039 L 4.22332763671875 33.05203628540039 C 3.764274835586548 33.05203628540039 3.374078989028931 32.89136505126953 3.052740097045898 32.57002639770508 C 2.731401205062866 32.24868774414062 2.570731639862061 31.85848999023438 2.570731639862061 31.39943885803223 L 2.570731639862061 3.856096982955933 C 2.570731639862061 3.39704418182373 2.731401205062866 3.006848573684692 3.052740097045898 2.68550968170166 C 3.374078989028931 2.364170789718628 3.764274835586548 2.203501462936401 4.22332763671875 2.203501224517822 L 19.6475944519043 2.203501224517822 C 20.10664749145508 2.203501224517822 20.61161231994629 2.318269491195679 21.1624870300293 2.547805786132812 C 21.7133617401123 2.777342081069946 22.14947891235352 3.052779912948608 22.47083854675293 3.374118804931641 L 27.84170722961426 8.745018005371094 Z M 20.19844055175781 4.544646263122559 L 20.19844055175781 11.01732635498047 L 26.67111968994141 11.01732635498047 C 26.55636215209961 10.68451976776123 26.43013572692871 10.44924926757812 26.29244232177734 10.31151580810547 L 20.90422058105469 4.923354148864746 C 20.76650619506836 4.785640239715576 20.53123664855957 4.659404277801514 20.19841003417969 4.544646263122559 Z M 26.80882263183594 30.84853553771973 L 26.80882263183594 13.22079658508301 L 19.64756393432617 13.22079658508301 C 19.18851089477539 13.22079658508301 18.79831504821777 13.06012725830078 18.47697639465332 12.73878860473633 C 18.15563774108887 12.41744995117188 17.99496841430664 12.02725410461426 17.99496841430664 11.56820106506348 L 17.99496841430664 4.406942367553711 L 4.774172306060791 4.406942367553711 L 4.774172306060791 30.84853553771973 L 26.80888366699219 30.84853553771973 Z M 10.833740234375 15.42426776885986 C 10.9255428314209 15.29802131652832 11.04604530334473 15.22629261016846 11.19524669647217 15.20908069610596 C 11.34444808959961 15.19186878204346 11.48216247558594 15.22916412353516 11.60838794708252 15.32096672058105 L 12.48633575439453 15.97511196136475 C 12.61258220672607 16.06691360473633 12.68431091308594 16.18741607666016 12.70152282714844 16.33661842346191 C 12.71873474121094 16.48582077026367 12.68143939971924 16.62353324890137 12.58963680267334 16.74975967407227 L 9.456582069396973 20.93289947509766 L 12.58963680267334 25.11603927612305 C 12.68143939971924 25.24228477478027 12.71873474121094 25.3799991607666 12.70152282714844 25.5291805267334 C 12.68431091308594 25.6783618927002 12.61258220672607 25.79886436462402 12.48633575439453 25.89068603515625 L 11.60838794708252 26.54483222961426 C 11.48214149475098 26.63663482666016 11.34442806243896 26.67392921447754 11.19524669647217 26.65671920776367 C 11.04606533050537 26.6395092010498 10.92556285858154 26.56777954101562 10.833740234375 26.44153213500977 L 6.943240165710449 21.25994110107422 C 6.782570838928223 21.04189300537109 6.782570838928223 20.82384490966797 6.943240165710449 20.60579490661621 L 10.833740234375 15.42426776885986 Z M 24.63981628417969 20.60585784912109 C 24.80048561096191 20.82390594482422 24.80048561096191 21.04195404052734 24.63981628417969 21.2600040435791 L 20.74931526184082 26.44159317016602 C 20.65753173828125 26.56783866882324 20.53703117370605 26.63956832885742 20.38780975341797 26.65678024291992 C 20.23858833312988 26.67399215698242 20.10087585449219 26.63669586181641 19.97466850280762 26.54489326477051 L 19.09671974182129 25.8907470703125 C 18.97047424316406 25.7989444732666 18.89874458312988 25.67844390869141 18.88153266906738 25.52924156188965 C 18.86432075500488 25.38003921508789 18.9016170501709 25.2423267364502 18.9934196472168 25.1161003112793 L 22.12647438049316 20.93296051025391 L 18.9934196472168 16.74982070922852 C 18.90163612365723 16.62357521057129 18.86434173583984 16.48586082458496 18.88153266906738 16.33667945861816 C 18.89872360229492 16.18749809265137 18.9704532623291 16.06699562072754 19.09671974182129 15.975172996521 L 19.97466850280762 15.3210277557373 C 20.10091400146484 15.22922515869141 20.23862838745117 15.19192981719971 20.38780975341797 15.20914173126221 C 20.53699111938477 15.22635364532471 20.65749359130859 15.29808235168457 20.74931526184082 15.42432880401611 L 24.63981628417969 20.60585784912109 Z M 13.96679496765137 28.54179382324219 C 13.81759357452393 28.51883888244629 13.69996356964111 28.44423675537109 13.61390495300293 28.31799125671387 C 13.52784633636475 28.19174575805664 13.4962854385376 28.05403137207031 13.51922035217285 27.90485000610352 L 15.89482879638672 13.59953498840332 C 15.91778469085693 13.45033359527588 15.99239540100098 13.33270359039307 16.11866188049316 13.24664497375488 C 16.24492835998535 13.1605863571167 16.38263130187988 13.12902545928955 16.53177261352539 13.1519603729248 L 17.61629104614258 13.32409763336182 C 17.76551246643066 13.34705352783203 17.88314247131348 13.42165374755859 17.96918106079102 13.54790019989014 C 18.05521965026855 13.67414665222168 18.0867805480957 13.81186008453369 18.06386566162109 13.96104145050049 L 15.68825721740723 28.266357421875 C 15.66530132293701 28.41555976867676 15.59070110321045 28.53318977355957 15.46445465087891 28.61924743652344 C 15.33820819854736 28.7053050994873 15.20049476623535 28.73686790466309 15.05131340026855 28.71393203735352 L 13.96679496765137 28.54179382324219 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cyd8l6 =
    '<svg viewBox="258.0 402.0 128.0 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(258.0, 402.0)" d="M 8 0 L 120 0 C 124.4182815551758 0 128 3.581721782684326 128 8 L 128 35 C 128 39.41827774047852 124.4182815551758 43 120 43 L 8 43 C 3.581721782684326 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 3.581721782684326 0 8 0 Z" fill="#baa378" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
