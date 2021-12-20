import 'package:adobe_xd/page_link.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Checkout.dart';
// import 'package:newoct/Checkout.dart';
// import 'package:newoct/pickup_place.dart';

class pickupplace extends StatelessWidget {
  pickupplace({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 0.0),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: 3000.0,
                  height: 1688.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: -409.0, end: -2163.0),
                        Pin(start: -8.0, end: -754.0),
                        child:
                            // Adobe XD layer: 'thomas-kinto-6MsMKW…' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage('assets/images/map.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 247.0, end: -54.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(53.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffbaa378)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 244.0, middle: 0.5),
            Pin(size: 49.0, end: 128.0),
            child: Text(
              'Pick-Up Place',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 35,
                color: const Color(0xff2a2a2a),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 78.0, start: 64.0),
            Pin(size: 32.0, end: 82.0),
            child: Text(
              'Center',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 23,
                color: const Color(0xff2a2a2a),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 100.0, start: 64.0),
            Pin(size: 32.0, end: 53.0),
            child: Text(
              'Distance',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 23,
                color: const Color(0xff2a2a2a),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 70.0, end: 52.0),
            Pin(size: 29.0, end: 83.0),
            child: Text(
              'Name ',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 21,
                color: const Color(0xff2a2a2a),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 46.0, end: 57.0),
            Pin(size: 29.0, end: 54.0),
            child: Text(
              '5km',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 21,
                color: const Color(0xff2a2a2a),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
              Pin(size: 25.0, start: 28.0), Pin(size: 23.6, start: 23.0),
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => Checkout(),
                  ),
                ],
                // Adobe XD layer: 'Icon ionic-md-arrow…' (shape)
                child: SvgPicture.string(
                  _svg_g9xtvp,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              )),
        ],
      ),
    );
  }
}

const String _svg_g9xtvp =
    '<svg viewBox="28.0 23.0 25.0 23.6" ><path transform="translate(-3340.12, -946.35)" d="M 3390.968505859375 978.8743286132812 L 3375.754638671875 978.8743286132812 L 3381.654541015625 973.23046875 C 3382.50048828125 972.32666015625 3382.50048828125 970.9208984375 3381.654541015625 970.0170288085938 C 3380.862060546875 969.1688232421875 3379.531982421875 969.1236572265625 3378.684326171875 969.9163818359375 C 3378.64990234375 969.9486083984375 3378.615966796875 969.982421875 3378.583740234375 970.0170288085938 L 3368.761474609375 979.54296875 C 3368.338623046875 979.962646484375 3368.106689453125 980.5394287109375 3368.121826171875 981.1355590820312 L 3368.121826171875 981.1637573242188 C 3368.106689453125 981.7598876953125 3368.338623046875 982.3358154296875 3368.761474609375 982.75634765625 L 3378.578125 992.2814331054688 C 3379.370849609375 993.12890625 3380.700927734375 993.1740112304688 3381.549072265625 992.38134765625 C 3381.583740234375 992.34912109375 3381.61669921875 992.3161010742188 3381.649169921875 992.2814331054688 C 3382.494873046875 991.3775634765625 3382.494873046875 989.9718627929688 3381.649169921875 989.0680541992188 L 3375.7490234375 983.4241943359375 L 3390.96142578125 983.4241943359375 C 3392.190673828125 983.39599609375 3393.163818359375 982.3777465820312 3393.136474609375 981.1492919921875 C 3393.177734375 979.9336547851562 3392.225341796875 978.9154052734375 3391.009765625 978.8751220703125 L 3390.968505859375 978.8743286132812 Z" fill="#040405" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
