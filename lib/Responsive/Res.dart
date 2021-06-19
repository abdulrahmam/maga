// import 'package:flutter/material.dart';

// class SizeCofig {
//   static MediaQueryData _mediaQueryData;
//   static double screenWidth;
//   static double screenHeight;
//   static double defaultSize;
//   static Orientation orientation;

//   void init(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);
//     screenWidth = _mediaQueryData.size.width;
//     screenHeight = _mediaQueryData.size.height;
//     orientation = _mediaQueryData.orientation;
//   }
// }

// double getSizeScreenHeight(double inputHeight) {
//   double screenHeight = SizeCofig.screenHeight;
//   return (inputHeight / 812.0) * screenHeight;
// }

// double getSizeScreenWidth(double inputWidth) {
//   double screenWidth = SizeCofig.screenWidth;
//   return (inputWidth / 812.0) * screenWidth;
// }

// class Home_Screen extends StatefulWidget {
//   static String homePage = 'HomeScreen';
//   @override
//   _Home_ScreenState createState() => _Home_ScreenState();
// }

// class _Home_ScreenState extends State<Home_Screen> {
//   int _selectedIndex = 0;
//   int badge = 1;
//   int index;
//   _tabChanged(index) {
//     print(badge);
//     badge = badge + 1;
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: DefaultTabController(
//           length: 5,
//           child: NestedScrollView(
//             headerSliverBuilder:
//                 (BuildContext context, bool innerBoxIsScrolled) {
//               return <Widget>[
//                 SliverAppBar(
//                   expandedHeight: 250.0,
//                   backgroundColor: Colors.white,
//                   floating: true,
//                   pinned: false,
//                   flexibleSpace: FlexibleSpaceBar(
//                     background: Column(
//                       children: [
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Row(
//                           children: [
//                             Search_Box_widget(),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 30),
//                               child: IconButton(
//                                   icon: Icon(Icons.filter_list_alt),
//                                   onPressed: () {}),
//                             )
//                           ],
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Banner_widget(),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SliverPersistentHeader(
//                   delegate: _SliverAppBarDelegate(
// TabBar(
//   labelStyle: TextStyle(
//       fontSize: 20,
//       color: Colors.white,
//       fontWeight: FontWeight.bold),
//   isScrollable: true,
//   labelColor: Color(0xff24292E),
//   unselectedLabelColor: Colors.black,
//   indicatorWeight: 2,
//   indicatorSize: TabBarIndicatorSize.label,
//   indicatorColor: Color(0XFF395697),
//   unselectedLabelStyle: TextStyle(fontSize: 14),
//   indicator: BubbleTabIndicator(
//       indicatorHeight: 30.0,
//       indicatorColor: Colors.grey[300],
//       // indicatorColor: Color(0xffFC6C26),
//       tabBarIndicatorSize: TabBarIndicatorSize.tab,
//       indicatorRadius: 26,
//       insets: EdgeInsets.all(-5),
//       padding: EdgeInsets.only(left: 70, right: 70)),
//                       tabs: [
//                         Tab(
//                           child: Text('Burger'),
//                         ),
//                         Tab(
//                           child: Text('Pizza'),
//                         ),
//                         Tab(
//                           child: Text('Sushi'),
//                         ),
//                         Tab(
//                           child: Text('Steak'),
//                         ),
//                         Tab(
//                           child: Text('Pasta'),
//                         ),
//                         // Tab(
//                         //   child: Text('Seafood'),
//                         // ),
//                       ],
//                     ),
//                   ),
//                   pinned: true,
//                 ),
//               ];
//             },
//             body: Container(
//               child: TabBarView(
//                 children: [
//                   CardWidget(
//                     itemCount: burger.length,
//                     itemBuilder: (context, index) {
//                       return ProductItem(
//                         item: burger[index],
//                       );
//                     },
//                   ),
//                   CardWidget(
//                     itemCount: pizza.length,
//                     itemBuilder: (context, index) {
//                       return ProductItem(
//                         item: pizza[index],
//                       );
//                     },
//                   ),
//                   CardWidget(
//                     itemCount: sushi.length,
//                     itemBuilder: (context, index) {
//                       return ProductItem(
//                         item: sushi[index],
//                       );
//                     },
//                   ),
//                   CardWidget(
//                     itemCount: steak.length,
//                     itemBuilder: (context, index) {
//                       return ProductItem(
//                         item: steak[index],
//                       );
//                     },
//                   ),
//                   CardWidget(
//                     itemCount: pasta.length,
//                     itemBuilder: (context, index) {
//                       return ProductItem(
//                         item: pasta[index],
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         bottomNavigationBar: Container(
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20),
//                 topRight: Radius.circular(20),
//               ),
//               boxShadow: [
//                 BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
//               ]),
//           child: Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//               child: GNav(
//                   rippleColor: Colors.grey[300],
//                   hoverColor: Colors.grey[100],
//                   gap: 8,
//                   activeColor: Colors.black,
//                   iconSize: 24,
//                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                   duration: Duration(milliseconds: 400),
//                   tabs: [
//                     GButton(
//                       icon: Icons.home,
//                       iconActiveColor: Colors.white,
//                       textColor: Colors.white,
//                       text: 'Home',
//                       backgroundColor: Color(0xff5B37B7),
//                     ),
//                     GButton(
//                       icon: Icons.favorite,
//                       iconColor: Color(0xffFC6C26),
//                       iconActiveColor: Color(0xffFC6C26),
//                       text: 'Likes',
//                       backgroundColor: Color(0xFFF6D6EE),
//                     ),
//                     GButton(
//                       icon: Icons.person_outline,
//                       text: 'Profile',
//                       backgroundColor: Color(0xff1194AA),
//                     ),
//                     GButton(
//                       icon: Icons.shopping_cart,
//                       iconColor: Colors.black,
//                       backgroundColor: Color(0xff842E9E),
//                       iconActiveColor: Colors.black,
//                       iconSize: 30,
//                       text: 'Cart',
//                       textColor: Colors.white,
//                       leading: Badge(
//                         badgeColor: Color(0xffFC6C26),
//                         elevation: 0,
//                         position: BadgePosition.topStart(top: -18, start: -12),
//                         badgeContent: Text(
//                           // badge.toString(),
//                           '2',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         child: Icon(
//                           Icons.shopping_cart,
//                           size: 25,
//                           color:
//                               _selectedIndex == 3 ? Colors.white : Colors.black,
//                           // Colors.white,
//                         ),
//                       ),
//                     ),
//                   ],
//                   selectedIndex: _selectedIndex,
//                   onTabChange: (value) {
//                     value = _selectedIndex;

//                     switch (value) {
//                       case 0:
//                         Center(
//                           child: Text(
//                             '1',
//                             style: TextStyle(
//                               fontSize: 15,
//                               color: Colors.blue,
//                             ),
//                             textAlign: TextAlign.end,
//                           ),
//                         );
//                         break;
//                       case 1:
//                         Center(
//                           child: Text(
//                             '2',
//                             style: TextStyle(
//                               fontSize: 15,
//                               color: Colors.blue,
//                             ),
//                             textAlign: TextAlign.end,
//                           ),
//                         );
//                         break;
//                       case 2:
//                         Center(
//                           child: Text(
//                             '3',
//                             style: TextStyle(
//                               fontSize: 15,
//                               color: Colors.blue,
//                             ),
//                             textAlign: TextAlign.end,
//                           ),
//                         );
//                         break;
//                       case 3:
//                         Center(
//                           child: Text(
//                             '4',
//                             style: TextStyle(
//                               fontSize: 15,
//                               color: Colors.blue,
//                             ),
//                             textAlign: TextAlign.end,
//                           ),
//                         );
//                         break;
//                     }
//                     // _tabChanged(value);
//                     //
//                     setState(() {});
//                   })),
//         ),
//       ),
//     );
//   }
// }

// class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//   _SliverAppBarDelegate(this._tabBar);

//   final TabBar _tabBar;

//   @override
//   double get minExtent => _tabBar.preferredSize.height;
//   @override
//   double get maxExtent => _tabBar.preferredSize.height;

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return new Container(
//       color: Colors.white,
//       child: _tabBar,
//     );
//   }

//   @override
//   bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
//     return false;
//   }
// }
import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Text('2'),
    );
  }
}
