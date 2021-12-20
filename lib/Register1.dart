// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Signin2.dart';
import 'package:adobe_xd/page_link.dart';
import './Home.dart';
import './Component31.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register1 extends StatefulWidget {
  Register1({
    Key? key,
  }) : super(key: key);

  @override
  State<Register1> createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  bool isChecked = false;
  bool onChecked = false;
  bool ifChecked = false;
  bool iChecked = false;
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
            padding: const EdgeInsets.only(left: 270, top: 10),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Home(),
                ),
              ],
              child: CircleAvatar(
                  backgroundColor: Color(0xffbaa378),
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                  )),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 290, top: 20),
          //   child: CircleAvatar(
          //       backgroundColor: Color(0xffbaa378), child: Icon(Icons.close)),
          // ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                "25OCT",
                style: TextStyle(
                    fontSize: text * 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffbaa378)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
                child: Text(
              "Register",
              style: TextStyle(
                  fontSize: text * 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffbaa378)),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "FirstName",
                      hintStyle: TextStyle(fontSize: 20),
                      prefixIcon: Icon(
                        Icons.person,
                        size: 35,
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: height / 40,
                // ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "LastName",
                      hintStyle: TextStyle(fontSize: 20),
                      prefixIcon: Icon(
                        Icons.person,
                        size: 35,
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: height / 40,
                // ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Phone",
                      hintStyle: TextStyle(fontSize: 20),
                      prefixIcon: Icon(
                        Icons.call,
                        size: 35,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                          onChecked = false;
                        });
                      },
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'You are Agreeing To Our',
                          style: TextStyle(
                              color: Colors.black, fontSize: text * 15),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Terms and Policies',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: text * 15,
                                  fontWeight: FontWeight.bold),
                              // recognizer: TapGestureRecognizer()
                              //   ..onTap = () {
                              //     // navigate to desired screen
                              //   }
                            )
                          ]),
                    ),
                  ],
                ),
                ElevatedButton(
                  child: Text(
                    "Register",
                    style: TextStyle(
                        fontSize: text * 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),

                      //StadiumBorder(),
                      // side: BorderSide(width: 6),
                      minimumSize: Size(220, 40),
                      backgroundColor: Color(0xffbaa378)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signin2()));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

const String _svg_b0p366 =
    '<svg viewBox="23.0 762.7 414.0 218.3" ><path  d="M 437 762.7349853515625 C 391.1549987792969 807.4669799804688 312.2049865722656 837 222.5 837 C 141.9230041503906 837 70.02369689941406 813.1719970703125 23 775.9039916992188 L 23 981 L 437 981 L 437 762.7349853515625 Z" fill="#2a2a2a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_apgjoo =
    '<svg viewBox="229.5 266.6 66.0 1.0" ><path transform="translate(229.5, 266.61)" d="M 0 0 L 66 0" fill="none" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lu4 =
    '<svg viewBox="52.5 416.6 315.5 1.0" ><path transform="translate(52.5, 416.61)" d="M 0 0 L 315.5 0" fill="none" stroke="#2a2a2a" stroke-width="1" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_lgtga1 =
    '<svg viewBox="53.5 391.5 20.4 20.5" ><path transform="translate(50.33, 388.54)" d="M 23.58370971679688 18.31588554382324 L 23.58370971679688 21.3954963684082 C 23.58605575561523 21.97358703613281 23.34457588195801 22.52587699890137 22.91859436035156 22.91668510437012 C 22.49261093139648 23.3074951171875 21.92160606384277 23.50060081481934 21.34585762023926 23.44857025146484 C 18.18703651428223 23.1053352355957 15.15276336669922 22.02593994140625 12.48684883117676 20.2971019744873 C 10.00655937194824 18.72102355957031 7.903703689575195 16.6181697845459 6.327622413635254 14.13787841796875 C 4.592752933502197 11.45985221862793 3.513108015060425 8.410821914672852 3.176154136657715 5.237799644470215 C 3.124287843704224 4.663836002349854 3.316044330596924 4.094499111175537 3.704581737518311 3.668865442276001 C 4.093119621276855 3.243231773376465 4.642659664154053 3.00049614906311 5.218963146209717 2.999953269958496 L 8.29857349395752 2.999953269958496 C 9.329076766967773 2.989811182022095 10.20742034912109 3.74518609046936 10.35164833068848 4.765597343444824 C 10.48163032531738 5.751143455505371 10.72268676757812 6.718818664550781 11.07022285461426 7.650168895721436 C 11.35224723815918 8.40043830871582 11.17186546325684 9.246232986450195 10.6082820892334 9.816160202026367 L 9.304580688476562 11.11986064910889 C 10.76591491699219 13.68984508514404 12.89382362365723 15.81775093078613 15.46380805969238 17.27908515930176 L 16.76750373840332 15.97538089752197 C 17.33743286132812 15.41179752349854 18.1832275390625 15.23141574859619 18.93349838256836 15.51344203948975 C 19.86484909057617 15.86097812652588 20.8325252532959 16.10203552246094 21.81806945800781 16.23201751708984 C 22.85031509399414 16.37764549255371 23.60956764221191 17.27374076843262 23.58370971679688 18.31588745117188 Z" fill="none" stroke="#2a2a2a" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_ok6ez1 =
    '<svg viewBox="388.2 24.0 26.2 26.2" ><path transform="translate(376.96, 12.71)" d="M 27.51280212402344 24.40407180786133 L 36.88388824462891 15.03298568725586 C 37.73580932617188 14.18106651306152 37.73580932617188 12.77952766418457 36.88388824462891 11.92761039733887 C 36.0319709777832 11.07569122314453 34.63043212890625 11.07569122314453 33.77851486206055 11.92761039733887 L 24.40742874145508 21.29869842529297 L 15.03634166717529 11.9276123046875 C 14.18442249298096 11.07569313049316 12.782883644104 11.07569313049316 11.9309663772583 11.9276123046875 C 11.50500774383545 12.35357093811035 11.28515720367432 12.91693496704102 11.28515720367432 13.48029899597168 C 11.28515720367432 14.04366302490234 11.50500774383545 14.60702705383301 11.9309663772583 15.03298568725586 L 21.30205154418945 24.40407180786133 L 11.93096446990967 33.7751579284668 C 11.50500583648682 34.20111846923828 11.28515529632568 34.76448440551758 11.28515529632568 35.32784652709961 C 11.28515529632568 35.89120864868164 11.50500583648682 36.45457458496094 11.93096446990967 36.88053131103516 C 12.78288173675537 37.73245239257812 14.18442058563232 37.73245239257812 15.03633975982666 36.88053131103516 L 24.40742492675781 27.50944519042969 L 33.77851486206055 36.88053131103516 C 34.63043212890625 37.73245239257812 36.0319709777832 37.73245239257812 36.88388442993164 36.88053131103516 C 37.73580551147461 36.02861404418945 37.73580551147461 34.6270751953125 36.88388442993164 33.7751579284668 L 27.51280212402344 24.40407180786133 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_knb5f6 =
    '<svg viewBox="52.5 256.6 316.0 1.0" ><path transform="translate(52.5, 256.61)" d="M 0 0 L 316 0" fill="none" stroke="#2a2a2a" stroke-width="1" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_lbb8tg =
    '<svg viewBox="6.0 18.6 18.8 7.0" ><path transform="translate(0.0, -3.92)" d="M 24.77913284301758 29.54217529296875 L 24.77913284301758 27.19478225708008 C 24.77913284301758 24.60192489624023 22.67720794677734 22.5 20.08434867858887 22.5 L 10.69478321075439 22.5 C 8.101925849914551 22.5 5.999999046325684 24.60192680358887 5.999999523162842 27.19478416442871 L 5.999999523162842 29.54217529296875" fill="none" stroke="#2a2a2a" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_pbtht =
    '<svg viewBox="10.7 4.5 9.4 9.4" ><path transform="translate(-1.31, 0.0)" d="M 21.38956642150879 9.194783210754395 C 21.38956642150879 11.78764152526855 19.28764152526855 13.88956642150879 16.69478416442871 13.88956642150879 C 14.10192489624023 13.88956642150879 11.99999904632568 11.78764057159424 11.99999904632568 9.194783210754395 C 11.99999904632568 6.601925849914551 14.10192584991455 4.5 16.69478416442871 4.5 C 19.28764152526855 4.5 21.38956642150879 6.601926326751709 21.38956642150879 9.194783210754395 Z" fill="none" stroke="#2a2a2a" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_ug3eeq =
    '<svg viewBox="52.5 306.6 316.0 1.0" ><path transform="translate(52.5, 306.61)" d="M 0 0 L 316 0" fill="none" stroke="#2a2a2a" stroke-width="1" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
