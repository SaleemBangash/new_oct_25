import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Home.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class select_button extends StatelessWidget {
  select_button({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child: PageLink(
            links: [
              PageLinkInfo(
                ease: Curves.easeOut,
                duration: 1.0,
                pageBuilder: () => Home(),
              ),
            ],
            child: SvgPicture.string(
              _svg_hgetqn,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 55.0, middle: 0.4992),
          Pin(size: 25.0, middle: 0.5),
          child: Text(
            'Select',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: const Color(0xff2a2a2a),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}

const String _svg_hgetqn =
    '<svg viewBox="0.0 0.0 103.1 43.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path  d="M 6.442428588867188 0 L 96.63642883300781 0 C 100.1944885253906 0 103.078857421875 3.581721782684326 103.078857421875 8 L 103.078857421875 35 C 103.078857421875 39.41827774047852 100.1944885253906 43 96.63642883300781 43 L 6.442428588867188 43 C 2.884373426437378 43 0 39.41827774047852 0 35 L 0 8 C 0 3.581721782684326 2.884373426437378 0 6.442428588867188 0 Z" fill="#baa378" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
