// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, unnecessary_new, prefer_typing_uninitialized_variables
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:new_oct_25/Tab2/soft_drinks.dart';
import 'package:new_oct_25/Tab2/drinks2.dart';
import 'package:new_oct_25/Tab2/iceCream2.dart';
import 'package:new_oct_25/Tab2/snacks2.dart';
import 'package:new_oct_25/bottomsheet.dart';
import 'package:new_oct_25/tabBar/coffee1.dart';
import 'package:new_oct_25/tabBar/coldDrinks.dart';
import 'package:new_oct_25/tabBar/drinks1.dart';
import 'package:new_oct_25/tabBar/iceCream.dart';
import 'package:new_oct_25/new.dart';
import 'package:new_oct_25/snacks/cheetos.dart';
import 'package:new_oct_25/snacks/doritos.dart';
import 'package:new_oct_25/snacks/kurkure.dart';
import 'package:new_oct_25/snacks/lays.dart';
import 'package:new_oct_25/tabBar/snacks1.dart';
import 'package:new_oct_25/tabBar/coffee1.dart';
import 'package:new_oct_25/tabBar/drinks1.dart';
import 'package:new_oct_25/tabBar/iceCream.dart';
import 'package:new_oct_25/tabBar/snacks1.dart';

import './Location.dart';
import 'package:adobe_xd/page_link.dart';
import 'dart:ui' as ui;
import './Iconawesomeheart.dart';

import './Cart.dart';
import './Wishlist.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'Drinks/cocacola.dart';
import 'Drinks/dew.dart';
import 'Drinks/redbull.dart';
import 'Drinks/sprite.dart';
import 'IceCream/chocolate.dart';
import 'IceCream/strawberry.dart';

import 'coffee/americano.dart';
import 'coffee/dopio.dart';
import 'coffee/flat.dart';
import 'coffee/lungo.dart';
import '/drawer/drawer.dart';
import 'drawer/drawer.dart';

class Home extends StatefulWidget {
  Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final _controller = PageController();
  // int _activePage = 0;
  // final PageController _pageViewController =
  //     PageController(initialPage: 0); // set the initial page you want to show
  // int _activePage = 0;  // will hold current active page index value
  //Create a List Holding all the Pages
  // final List<String> _Pages = [
  //   Image.asset(
  //     "assets/images/Image.png",
  //     fit: BoxFit.cover,
  //     width: 350,
  //   ),
  //   Image.asset(
  //     "assets/images/sheri-silver-1.png",
  //     fit: BoxFit.cover,
  //     width: 350,
  //   ),
  //   Image.asset(
  //     "assets/images/sheri-silver-7.png",
  //     fit: BoxFit.cover,
  //     width: 350,
  //   ),
  //   Image.asset(
  //     "assets/images/americano.jpg",
  //     fit: BoxFit.cover,
  //     width: 350,
  //   )
  // ];
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   _pageViewController.dispose(); // dispose the PageController
  // }

  // final late _controller;
  final controller = PageController();

  @override
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 1;
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    // MediaQueryData queryData;
    // queryData = MediaQuery.of(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Container(width: 250, child: MyDrawer()),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          leading: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/menu_icon.png',
                width: 10.0,
                height: 10.0,
              ),
            ),
          ),
          // title: Text(
          //   "25OCT",
          //   style: TextStyle(color: Colors.black),
          // ),
          centerTitle: true,
          backgroundColor: Color(0xffbaa378),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Center(
                child: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xffF5ECE3),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 07,
            ),
            // Column(
            //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     // Image.asset("assets/images/Image.png"),
            //     PageView(
            //       controller: _controller,
            //       children: const [
            //         Center(
            //           child: Text('Page 1'),
            //         ),
            //         Center(
            //           child: Text('Page 2'),
            //         ),
            //         Center(
            //           child: Text('Page 3'),
            //         ),
            //         Center(
            //           child: Text('Page 4'),
            //         ),
            //         Center(
            //           child: Text('Page 5'),
            //         ),
            //       ],
            //     ),
            //     SmoothPageIndicator(
            //       controller: _controller,
            //       count: 5,
            //       axisDirection: Axis.horizontal,
            //       effect: const SlideEffect(
            //         activeDotColor: Colors.white54,
            //         dotHeight: 10,
            //         dotColor: Colors.blue,
            //         dotWidth: 10,
            //       ),
            //     ),
            //     const SizedBox(height: 50),
            //   ],
            // ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 05),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                    width: double.infinity,
                    height: 170,
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          height: 170,
                          // pageview
                          child: new PageView(
                            // pageSnapping: false,
                            // padEnds: true,
                            // reverse: true,
                            controller: controller,
                            children: [
                              Image.asset(
                                "assets/images/Image.png",
                                fit: BoxFit.cover,
                                width: 350,
                              ),
                              Image.asset(
                                "assets/images/sheri-silver-1.png",
                                fit: BoxFit.cover,
                                width: 350,
                              ),
                              Image.asset(
                                "assets/images/sheri-silver-7.png",
                                fit: BoxFit.cover,
                                width: 350,
                              ),
                              Image.asset(
                                "assets/images/americano.jpg",
                                fit: BoxFit.cover,
                                width: 350,
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 110,
                          child: SmoothPageIndicator(
                            controller: controller,
                            count: 4,
                            axisDirection: Axis.horizontal,
                            effect: const SlideEffect(
                              radius: 14,
                              activeDotColor: Color(0xffBAA378),
                              dotHeight: 10,
                              dotColor: Color.fromARGB(255, 223, 208, 176),
                              dotWidth: 30,
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ),

            // Stack(
            //   children: [
            //     Padding(
            //       padding:
            //           const EdgeInsets.symmetric(horizontal: 12, vertical: 05),
            //       child: ClipRRect(
            //         borderRadius: BorderRadius.circular(20.0),
            //         child: ImageSlideshow(
            //           /// Width of the [ImageSlideshow].
            //           width: 100,

            //           /// Height of the [ImageSlideshow].
            //           height: 160,

            //           /// The page to show when first creating the [ImageSlideshow].
            //           initialPage: 0,

            //           /// The color to paint the indicator.
            //           indicatorColor: Theme.of(context).primaryColor,

            //           /// The color to paint behind th indicator.
            //           indicatorBackgroundColor: Colors.grey,

            //           /// The widgets to display in the [ImageSlideshow].
            //           /// Add the sample image file into the images folder
            //           children: [
            //             Image.asset(
            //               "assets/images/Image.png",
            //               fit: BoxFit.cover,
            //               width: 350,
            //             ),
            //             Image.asset(
            //               "assets/images/sheri-silver-1.png",
            //               fit: BoxFit.cover,
            //               width: 350,
            //             ),
            //             Image.asset(
            //               "assets/images/sheri-silver-7.png",
            //               fit: BoxFit.cover,
            //               width: 350,
            //             ),
            //             Image.asset(
            //               "assets/images/americano.jpg",
            //               fit: BoxFit.cover,
            //               width: 350,
            //             )
            //           ],

            //           /// Called whenever the page in the center of the viewport changes.
            //           // onPageChanged: (value) {
            //           //   print('Page changed: $value');
            //           // },
            //           // onPageChanged: (int index) {
            //           //   setState(() {
            //           //     _activePage = index;
            //           //   });
            //           // },

            //           /// Auto scroll interval.
            //           /// Do not auto scroll with null or 0.
            //           autoPlayInterval: 3000,

            //           /// Loops back to first slide.
            //           isLoop: true,
            //         ),
            //       ),
            //     ),
            //     SmoothPageIndicator(

            //       controller: _controller,
            //       count: 5,
            //       axisDirection: Axis.horizontal,
            //       effect: const SlideEffect(

            //         radius: 14,
            //         activeDotColor: Colors.white54,
            //         dotHeight: 10,
            //         dotColor: Colors.blue,
            //         dotWidth: 30,
            //       ),
            //     ),
            //   ],
            // ),

            // Stack(
            //   children: [
            //     PageView.builder(
            //         controller: _pageViewController,
            //         onPageChanged: (int index) {
            //           setState(() {
            //             _activePage = index;
            //           });
            //         },
            //         itemCount: _Pages.length,
            //         itemBuilder: (BuildContext context, int index) {
            //           return _Pages[index];
            //         }),
            //     //creating dots at bottom
            //     Positioned(
            //       bottom: 0,
            //       left: 0,
            //       right: 0,
            //       height: 40,
            //       child: Container(
            //         color: Colors.black12,
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: List<Widget>.generate(
            //               _Pages.length,
            //               (index) => Padding(
            //                     padding:
            //                         const EdgeInsets.symmetric(horizontal: 8),
            //                     child: InkWell(
            //                       onTap: () {
            //                         _pageViewController.animateToPage(index,
            //                             duration:
            //                                 const Duration(milliseconds: 300),
            //                             curve: Curves.easeIn);
            //                       },
            //                       child: CircleAvatar(
            //                         radius: 5,
            //                         // check if a dot is connected to the current page
            //                         // if true, give it a different color
            //                         backgroundColor: _activePage == index
            //                             ? Colors.greenAccent
            //                             : Colors.white30,
            //                       ),
            //                     ),
            //                   )),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: SizedBox(
            //     height: height / 5,
            //     width: 200,
            //     child: ClipRRect(
            //       borderRadius: BorderRadius.circular(20.0),
            //       child: CarouselSlider(
            //         options: CarouselOptions(
            //           autoPlay: true,
            //           aspectRatio: 1.0,
            //           enlargeCenterPage: false,
            //           height: height,
            //           viewportFraction: 2.0,
            //           pageSnapping: true,

            //           //enlargeStrategy: CenterPageEnlargeStrategy.height,
            //           //scrollDirection: Axis.vertical,
            //         ),
            //         items: [
            //           Image.asset(
            //             "assets/images/Image.png",
            //             fit: BoxFit.cover,
            //             width: 350,
            //           ),
            //           Image.asset(
            //             "assets/images/sheri-silver-1.png",
            //             fit: BoxFit.cover,
            //             width: 350,
            //           ),
            //           Image.asset(
            //             "assets/images/sheri-silver-7.png",
            //             fit: BoxFit.cover,
            //             width: 350,
            //           ),
            //           Image.asset(
            //             "assets/images/americano.jpg",
            //             fit: BoxFit.cover,
            //             width: 350,
            //           )
            //           // NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
            //           // NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
            //           // AssetImage("assets/images/Image.png"),
            //           // ExactAssetImage("assets/images/Image.png"),
            //           // ExactAssetImage("assets/images/Image.png"),
            //         ],
            //         // autoplay: false,
            //         // animationDuration: Duration(milliseconds: 1000),
            //         // dotSize: 6.0,
            //         // dotSpacing: 15.0,
            //         // dotColor: Colors.lightGreenAccent,
            //         // borderRadius: true, options: null,
            //       ),
            //     ),
            //   ),
            // ),

            // Container(
            //   width: width / 5,
            //   height: height / 4,
            //   child: Image.asset("assets/images/Image.png"),
            // ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 370,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffF5ECE3),
                        // border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset("assets/images/pin_icon@2x.png",
                                height: 28, width: 28),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "PickUp From",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10),
                                        ),
                                        Text(
                                          "No Branch Picked",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13),
                                        ),
                                      ]),
                                ),
                                // SizedBox(width: 100),
                                Image.asset("assets/images/drop_arrow.png",
                                    height: 40, width: 40),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Container(
              height: 25,
              decoration: BoxDecoration(
                // color: Color(0xffbaa378),
                borderRadius: BorderRadius.circular(16),
              ),
              child: TabBar(
                  indicatorColor: Theme.of(context).primaryColor,
                  indicatorWeight: 4,

                  // indicatorSize: TabBarIndicatorSize.tab,
                  //indicatorWeight: 15,
                  // indicatorPadding: const EdgeInsets.all(10),
                  indicatorSize: TabBarIndicatorSize.label,
                  //indicatorColor: Colors.blue,
                  // indicator: BoxDecoration(
                  //   // borderRadius: BorderRadius.circular(16),
                  //   border: Border(
                  //       bottom: BorderSide(
                  //           // color: Colors.black,
                  //           // width: 4.0,
                  //           )),
                  //   // border: Border.all(width: 5, color: Colors.black),
                  //   // color: Color(0xffbaa378)
                  // ),

                  padding: EdgeInsets.zero,
                  indicatorPadding: EdgeInsets.zero,
                  labelPadding: EdgeInsets.zero,
                  labelColor: Colors.black,
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: "ICE CREAM",
                    ),
                    Tab(
                      text: "SOFT DRINKS",
                    ),
                    Tab(
                      text: "SNACKS",
                    ),
                    Tab(
                      text: "DRINKS",
                    )
                  ]),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            SizedBox(
              height: 390,
              child: TabBarView(children: [
                NewIcream(),
                SoftDrinks(),
                NewSnacks(),
                NewDrinks()
              ]),
            ),
          ],
        ),
        // bottomNavigationBar: Bottomsheet(),
        // ClipRRect(
        //   borderRadius: BorderRadius.only(
        //     topRight: Radius.circular(25.0),
        //     topLeft: Radius.circular(25.0),
        //   ),
        //   child: BottomNavigationBar(
        //     onTap: onTabTapped, // new
        //     currentIndex: _currentIndex,
        //     backgroundColor: Color(0xffbaa378),
        //     type: BottomNavigationBarType.fixed,
        //     selectedItemColor: Colors.black,

        //     selectedLabelStyle:
        //         TextStyle(fontWeight: FontWeight.bold, fontSize: text * 15),

        //     unselectedItemColor: Colors.black,
        //     iconSize: 25,

        //     //elevation: 5,
        //     items: [
        //       BottomNavigationBarItem(
        //         icon: InkWell(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(builder: (context) => Home()),
        //               );
        //             },
        //             child: Icon(Icons.home)),
        //         title: Text(
        //           'Home',
        //           style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        //         ),
        //         backgroundColor: Colors.white,
        //       ),
        //       BottomNavigationBarItem(
        //           icon: InkWell(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(builder: (context) => Cart()),
        //               );
        //             },
        //             child: Icon(
        //               Icons.store_mall_directory_outlined,
        //               color: Colors.black,
        //             ),
        //           ),
        //           title: Text(
        //             'Cart',
        //             style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        //           ),
        //           backgroundColor: Colors.white),
        //       BottomNavigationBarItem(
        //         icon: InkWell(
        //           onTap: () {
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => Wishlist()),
        //             );
        //           },
        //           child: Icon(
        //             Icons.favorite_outline,
        //             color: Colors.black,
        //           ),
        //         ),
        //         title: Text(
        //           'Favourite',
        //           style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        //         ),
        //         //backgroundColor: Colors.white,
        //       ),
        //       // BottomNavigationBarItem(
        //       //   icon: InkWell(
        //       //     onTap: () {
        //       //       Navigator.push(
        //       //         context,
        //       //         MaterialPageRoute(builder: (context) => Profile()),
        //       //       );
        //       //     },
        //       //     child: Icon(
        //       //       Icons.person,
        //       //       color: Colors.black,
        //       //     ),
        //       //   ),
        //       //   title: Text(
        //       //     'Profile',
        //       //   ),
        //       //   backgroundColor: Colors.white,
        //       // ),
        //     ],
        //     // type: BottomNavigationBarType.shifting,
        //     // currentIndex: _selectedIndex,
        //     // selectedItemColor: Colors.black,
        //     // iconSize: 40,
        //     // onTap: _onItemTapped,
        //     // elevation: 5
        //   ),
        // ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

// void onTabTapped(int index) {
//    setState(() {
//      _currentIndex = index;
//    });
//  }

// const String _svg_ya8dv =
//     '<svg viewBox="188.5 317.0 21.0 30.0" ><path transform="translate(181.0, 314.0)" d="M 18 3 C 12.21000003814697 3 7.5 7.710000038146973 7.5 13.5 C 7.5 21.375 18 33 18 33 C 18 33 28.5 21.375 28.5 13.5 C 28.5 7.710000038146973 23.79000091552734 3 18 3 Z M 24 15 L 19.5 15 L 19.5 19.5 L 16.5 19.5 L 16.5 15 L 12 15 L 12 12 L 16.5 12 L 16.5 7.5 L 19.5 7.5 L 19.5 12 L 24 12 L 24 15 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
// const String _svg_cc2wz2 =
//     '<svg viewBox="19.5 441.6 105.0 1.0" ><path transform="translate(19.5, 441.61)" d="M 0 0 L 105 0" fill="none" stroke="#2a2a2a" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
// const String _svg_som8e3 =
//     '<svg viewBox="20.5 386.6 334.4 1.0" ><path transform="translate(20.5, 386.61)" d="M 0 0 L 334.3638305664062 0" fill="none" stroke="#2a2a2a" stroke-width="1" stroke-opacity="0.53" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
// const String _svg_v58nwj =
//     '<svg viewBox="326.5 355.0 25.5 25.5" ><path transform="translate(326.51, 355.0)" d="M 25.15188026428223 22.04898643493652 L 20.18625259399414 17.0833568572998 C 19.96212577819824 16.85923004150391 19.65831184387207 16.73471641540527 19.33955574035645 16.73471641540527 L 18.5277214050293 16.73471641540527 C 19.90235900878906 14.97657585144043 20.71917343139648 12.76520156860352 20.71917343139648 10.35958671569824 C 20.71917343139648 4.636911392211914 16.08226203918457 0 10.35958671569824 0 C 4.636910438537598 0 0 4.636911392211914 0 10.35958671569824 C 0 16.08226203918457 4.636911392211914 20.71917343139648 10.35958671569824 20.71917343139648 C 12.76520156860352 20.71917343139648 14.97657585144043 19.90235900878906 16.73471641540527 18.5277214050293 L 16.73471641540527 19.33955574035645 C 16.73471641540527 19.65831184387207 16.85923004150391 19.96212577819824 17.0833568572998 20.18625259399414 L 22.04898643493652 25.15188026428223 C 22.51716041564941 25.62005424499512 23.27420616149902 25.62005424499512 23.73739814758301 25.15188026428223 L 25.14690017700195 23.74237823486328 C 25.61507415771484 23.27420425415039 25.61507415771484 22.51715850830078 25.15188026428223 22.04898452758789 Z M 10.35958671569824 16.73471641540527 C 6.83832311630249 16.73471641540527 3.984456300735474 13.88582992553711 3.984456300735474 10.35958671569824 C 3.984456300735474 6.83832311630249 6.833343029022217 3.984456300735474 10.35958671569824 3.984456300735474 C 13.88084983825684 3.984456300735474 16.73471641540527 6.833343029022217 16.73471641540527 10.35958671569824 C 16.73471641540527 13.88084983825684 13.88582992553711 16.73471641540527 10.35958671569824 16.73471641540527 Z" fill="#8b8b8b" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
// const String _svg_ilbpg =
//     '<svg viewBox="17.3 50.0 31.5 27.6" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(17.25, 45.78)" d="M 1.125 9.28125 L 30.375 9.28125 C 30.99635124206543 9.28125 31.5 8.77760124206543 31.5 8.15625 L 31.5 5.34375 C 31.5 4.722398281097412 30.99635124206543 4.21875 30.375 4.21875 L 1.125 4.21875 C 0.5036484599113464 4.21875 0 4.722398281097412 0 5.34375 L 0 8.15625 C 0 8.77760124206543 0.5036484599113464 9.28125 1.125 9.28125 Z M 1.125 20.53125 L 22.375 20.53125 C 22.99635124206543 20.53125 23.5 20.02760124206543 23.5 19.40625 L 23.5 16.59375 C 23.5 15.97239875793457 22.99635124206543 15.46875 22.375 15.46875 L 1.125 15.46875 C 0.5036484599113464 15.46875 0 15.97239875793457 0 16.59375 L 0 19.40625 C 0 20.02760124206543 0.5036484599113464 20.53125 1.125 20.53125 Z M 1.125 31.78125 L 30.375 31.78125 C 30.99635124206543 31.78125 31.5 31.27760124206543 31.5 30.65625 L 31.5 27.84375 C 31.5 27.22239875793457 30.99635124206543 26.71875 30.375 26.71875 L 1.125 26.71875 C 0.5036484599113464 26.71875 0 27.22239875793457 0 27.84375 L 0 30.65625 C 0 31.27760124206543 0.5036484599113464 31.78125 1.125 31.78125 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
// const String _svg_ob0a0d =
//     '<svg viewBox="3.0 2.0 33.2 36.9" ><path transform="translate(0.0, 0.0)" d="M 3 14.92647266387939 L 19.6197509765625 1.999999642372131 L 36.23949813842773 14.92647266387939 L 36.23949813842773 35.23949813842773 C 36.23949813842773 36.21895599365234 35.85041427612305 37.15834045410156 35.15773773193359 37.85101318359375 C 34.46506500244141 38.5436897277832 33.52567672729492 38.93277740478516 32.54621887207031 38.93277740478516 L 6.693277359008789 38.93277740478516 C 5.713765621185303 38.93277740478516 4.774361133575439 38.5436897277832 4.081742286682129 37.85101318359375 C 3.389105319976807 37.15834045410156 3 36.21895599365234 3 35.23949813842773 L 3 14.92647266387939 Z" fill="none" stroke="#2a2a2a" stroke-width="4" stroke-linecap="round" stroke-linejoin="round" /></svg>';
// const String _svg_hcv6ir =
//     '<svg viewBox="14.1 20.5 11.1 18.5" ><path transform="translate(5.08, 8.47)" d="M 9 30.46638870239258 L 9 12 L 20.079833984375 12 L 20.079833984375 30.46638870239258" fill="none" stroke="#2a2a2a" stroke-width="4" stroke-linecap="round" stroke-linejoin="round" /></svg>';
// const String _svg_u51o =
//     '<svg viewBox="13.1 33.0 3.3 3.3" ><path transform="translate(1.12, 3.03)" d="M 15.31882667541504 31.6594123840332 C 15.31882667541504 32.57588195800781 14.57588195800781 33.31882476806641 13.6594123840332 33.31882476806641 C 12.74294471740723 33.31882476806641 12 32.57588195800781 12 31.6594123840332 C 12 30.74294662475586 12.74294471740723 30 13.6594123840332 30 C 14.57588195800781 30 15.31882667541504 30.74294662475586 15.31882667541504 31.6594123840332 Z" fill="none" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
// const String _svg_p2w3cf =
//     '<svg viewBox="31.4 33.0 3.3 3.3" ><path transform="translate(2.87, 3.03)" d="M 31.81882858276367 31.6594123840332 C 31.81882858276367 32.57588195800781 31.07588195800781 33.31882476806641 30.15941619873047 33.31882476806641 C 29.24295043945312 33.31882476806641 28.50000381469727 32.57588195800781 28.50000381469727 31.6594123840332 C 28.50000381469727 30.74294662475586 29.24295043945312 30 30.15941619873047 30 C 31.07588195800781 30 31.81882858276367 30.74294662475586 31.81882858276367 31.6594123840332 Z" fill="none" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
// const String _svg_wn3ln7 =
//     '<svg viewBox="1.5 1.5 36.5 24.9" ><path  d="M 1.5 1.5 L 8.13764762878418 1.5 L 12.58487224578857 23.71952819824219 C 12.8980655670166 25.29635238647461 14.29636383056641 26.42198181152344 15.90369701385498 26.39118003845215 L 32.03318023681641 26.39118003845215 C 33.64052200317383 26.42198181152344 35.03881454467773 25.29635238647461 35.35200881958008 23.71952819824219 L 38.00707244873047 9.797059059143066 L 9.797059059143066 9.797059059143066" fill="none" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
// const String _svg_czp7x7 =
//     '<svg viewBox="272.5 854.5 32.8 28.7" ><path transform="translate(272.5, 852.25)" d="M 29.60227584838867 4.209194660186768 C 26.0932788848877 1.218863964080811 20.87460708618164 1.756739139556885 17.65375900268555 5.080039978027344 L 16.39231300354004 6.379905223846436 L 15.13086700439453 5.080039978027344 C 11.91642189025879 1.756739139556885 6.691347599029541 1.218863964080811 3.18235182762146 4.209194660186768 C -0.8389065861701965 7.641351222991943 -1.050214886665344 13.80130386352539 2.54842734336853 17.52160835266113 L 14.93876838684082 30.31535720825195 C 15.73917865753174 31.14138031005859 17.03904342651367 31.14138031005859 17.83945465087891 30.31535720825195 L 30.22979545593262 17.52161026000977 C 33.83484268188477 13.80130577087402 33.62353134155273 7.641353130340576 29.60227394104004 4.209196090698242 Z" fill="none" stroke="#000000" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
