// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
// import 'package:adobe_xd/pinned.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Iconawesomeheart extends StatelessWidget {
  Iconawesomeheart({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        FavoriteButton(
          //iconSize: 70,
          isFavorite: true,
          // iconDisabledColor: Colors.white,
          valueChanged: (_isFavorite) {
            // print('Is Favorite : $_isFavorite');
          },
        ),
      ],
    );
  }
}

const String _svg_ytqz0d =
    '<svg viewBox="0.0 0.0 25.6 22.4" ><path transform="translate(0.0, -2.25)" d="M 23.07878303527832 3.776942491531372 C 20.34304428100586 1.445575833320618 16.27438545227051 1.864922285079956 13.7632999420166 4.455883979797363 L 12.77983283996582 5.469305038452148 L 11.79636478424072 4.455883979797363 C 9.290270805358887 1.864922285079956 5.21661901473999 1.445575833320618 2.48088264465332 3.776942491531372 C -0.6542311906814575 6.452772617340088 -0.818974494934082 11.25528717041016 1.986652970314026 14.15576648712158 L 11.64659786224365 24.13022422790527 C 12.27062606811523 24.77421951293945 13.2840461730957 24.77421951293945 13.90807342529297 24.13022422790527 L 23.56801795959473 14.15576839447021 C 26.37863922119141 11.25528812408447 26.21389389038086 6.452774047851562 23.07877922058105 3.776943683624268 Z" fill="none" stroke="#000000" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
