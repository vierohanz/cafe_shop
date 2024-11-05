import 'package:coffee_shop/appBar/favorite_screen.dart';
import 'package:coffee_shop/appBar/home_screen.dart';
import 'package:coffee_shop/appBar/inbox_screen.dart';
import 'package:coffee_shop/appBar/order_screen.dart';
import 'package:coffee_shop/appBar/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class BottomBar extends StatefulWidget {
  final String username;

  BottomBar(this.username, {Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _bottomNavIndex = 0;
  late PageController _pageController;

  final List<IconData> iconList = [
    Icons.home,
    Icons.favorite_outline_outlined,
    Icons.assignment_rounded,
    Icons.local_post_office_outlined
  ];

  late List<Widget> pages;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _bottomNavIndex);
    // Inisialisasi pages setelah widget dapat diakses
    pages = [
      homeScreen(
        username: widget.username,
      ),
      FavoriteScreen(),
      orderScreen(),
      inboxScreen()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_bottomNavIndex != 0) {
          // Jika bukan halaman Home, arahkan kembali ke halaman Home
          _pageController.jumpToPage(0);
          setState(() {
            _bottomNavIndex = 0;
          });
          return false; // Tidak izinkan untuk keluar aplikasi
        }
        return true; // Izinkan untuk keluar aplikasi jika sudah di halaman Home
      },
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          children: pages,
          onPageChanged: (index) {
            setState(() {
              _bottomNavIndex = index;
            });
          },
        ),
        floatingActionButton: Container(
          width: 60,
          height: 60,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => cartScreen()));
            },
            child: Icon(
              Icons.shopping_cart,
              size: 39,
              color: Colors.black,
            ),
            backgroundColor: Color(0xFFDA7911),
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          activeColor: Color(0xFFDA7911),
          splashColor: Colors.black,
          inactiveColor: Color(0xFFFFFFFF),
          backgroundColor: Color(0xFF262626),
          borderColor: Color(0xFFDA7911),
          borderWidth: 4,
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.defaultEdge,
          onTap: (index) {
            _pageController.jumpToPage(index);
          },
        ),
      ),
    );
  }
}
