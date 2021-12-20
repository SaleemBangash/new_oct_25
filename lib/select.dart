import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './settings.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class select extends StatelessWidget {
  select({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child: SvgPicture.string(
            _svg_efd8tx,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 36.0, middle: 0.5193),
          Pin(size: 17.0, middle: 0.5002),
          child: PageLink(
            links: [
              PageLinkInfo(
                transition: LinkTransition.Fade,
                ease: Curves.easeOut,
                duration: 0.3,
                pageBuilder: () => settings(),
              ),
            ],
            child: Text(
              'Select',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: const Color(0xff2a2a2a),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

const String _svg_efd8tx =
    '<svg viewBox="0.0 0.0 61.0 25.0" ><path  d="M 3.814678907394409 0 L 57.22018432617188 0 C 59.32697296142578 0 61.03486251831055 2.08209753036499 61.03486251831055 4.650496006011963 L 61.03486251831055 20.34591865539551 C 61.03486251831055 22.91431617736816 59.32697296142578 24.99641418457031 57.22018432617188 24.99641418457031 L 3.814678907394409 24.99641418457031 C 1.707889795303345 24.99641418457031 0 22.91431617736816 0 20.34591865539551 L 0 4.650496006011963 C 0 2.08209753036499 1.707889795303345 0 3.814678907394409 0 Z" fill="#ffffff" fill-opacity="0.83" stroke="none" stroke-width="1" stroke-opacity="0.83" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
