import 'package:coffee_shop/africano.dart';
import 'package:coffee_shop/americano.dart';
import 'package:coffee_shop/appBar/favorite_screen.dart';
import 'package:coffee_shop/dark.dart';
import 'package:coffee_shop/fun.dart';
import 'package:coffee_shop/statefavorite/container_widget.dart';
import 'package:coffee_shop/venomous.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:coffee_shop/main.dart';

class homeScreen extends StatelessWidget {
  final String username;

  homeScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeContent(username: username),
    );
  }
}

class HomeContent extends StatefulWidget {
  final String username;

  HomeContent({required this.username, Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent>
    with AutomaticKeepAliveClientMixin {
  int _selectedIndex = 0;
  bool isSearching = false;
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    String username = widget.username.split('@').first;
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CustomPaint(
                painter: CustomBackgroundPainter(),
                child: Container(
                  color: Colors.transparent,
                  child: Stack(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              margin: EdgeInsets.only(top: 35),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            height: 49,
                                            width: 49,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    offset: Offset(0, .5),
                                                    blurRadius: 2,
                                                    spreadRadius: 0.2)
                                              ],
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(17),
                                              ),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/profile.png')),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '   $username',
                                              style: TextStyle(
                                                color: Color(0xFFFFFFFFF),
                                                fontStyle: FontStyle.normal,
                                                fontFamily: 'Poppins',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              '   Welcome back,',
                                              style: TextStyle(
                                                color: Color(0xFFFFFFFFFF),
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w100,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        FavoriteScreen()));
                                          },
                                          child: Icon(
                                            Icons.favorite_rounded,
                                            size: 26,
                                            color: Colors.white,
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.search,
                                              size: 32,
                                              color: Colors.white,
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.85,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Color(0xFF6A6969)),
                                  color: Color(0xFF2D2C2C),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xFF6A6969),
                                        blurRadius: 0.1,
                                        offset: Offset(0, 0.3),
                                        spreadRadius: 1)
                                  ]),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFFE1E1E1),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/point.jpg',
                                            ),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          'Point',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFFD0CECA)),
                                        ),
                                        Text('50/100 XP',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 11,
                                                fontWeight: FontWeight.w100,
                                                color: Color(0xEEE9B42D)))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 15, left: 10),
                                    alignment: Alignment.bottomCenter,
                                    height: 4,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFC3C3C3),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 50,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              color: Color(0xEEE9B42D)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/Frame.png'))),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 6, left: 6),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Mypoint',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xFFC3C3C3)),
                                        ),
                                        Text(
                                          '4.311 Points',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xEEE9B42D)),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 7, right: 7),
                              child: GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  'assets/images/pic_1.png',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: EdgeInsets.all(0),
                              height: 30,
                              child: ListView(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 13),
                                      child: GestureDetector(
                                        onTap: () {
                                          _onButtonTap(0);
                                        },
                                        child: CustomButton(
                                          text: 'Newest',
                                          isSelected: _selectedIndex == 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 13),
                                    child: GestureDetector(
                                      onTap: () {
                                        _onButtonTap(1);
                                      },
                                      child: CustomButton(
                                        text: 'Recommended',
                                        isSelected: _selectedIndex == 1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 13),
                                    child: GestureDetector(
                                      onTap: () {
                                        _onButtonTap(2);
                                      },
                                      child: CustomButton(
                                        text: 'Popular',
                                        isSelected: _selectedIndex == 2,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 13),
                                    child: GestureDetector(
                                      onTap: () {
                                        _onButtonTap(3);
                                      },
                                      child: CustomButton(
                                        text: 'Hotsale',
                                        isSelected: _selectedIndex == 3,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 13),
                                    child: GestureDetector(
                                      onTap: () {
                                        _onButtonTap(4);
                                      },
                                      child: CustomButton(
                                        text: 'Choice',
                                        isSelected: _selectedIndex == 4,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 13),
                                    child: GestureDetector(
                                      onTap: () {
                                        _onButtonTap(5);
                                      },
                                      child: CustomButton(
                                        text: 'Good',
                                        isSelected: _selectedIndex == 5,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 13),
                                    child: GestureDetector(
                                      onTap: () {
                                        _onButtonTap(6);
                                      },
                                      child: CustomButton(
                                        text: 'Luxurious',
                                        isSelected: _selectedIndex == 6,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 13),
                                    child: GestureDetector(
                                      onTap: () {
                                        _onButtonTap(7);
                                      },
                                      child: CustomButton(
                                        text: 'Happy',
                                        isSelected: _selectedIndex == 7,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 13),
                                    child: GestureDetector(
                                      onTap: () {
                                        _onButtonTap(8);
                                      },
                                      child: CustomButton(
                                        text: 'Trend',
                                        isSelected: _selectedIndex == 8,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 230,
                              child: ListView(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.all(4),
                                    width: 186,
                                    height: 230,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2D2C2C),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      americano()),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'hero-tag-for-image',
                                            child: Container(
                                              height: 150,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/1.jpg'),
                                                      fit: BoxFit.cover)),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Americano Coffee',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          'Antariksa Cafe',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w300,
                                              color: Colors.grey,
                                              fontSize: 10),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'IDR 10,000',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 1),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.all(4),
                                    width: 186,
                                    height: 230,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2D2C2C),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => fun()),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'hero-tag-for-image2',
                                            child: Container(
                                              height: 150,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/2.jpg'),
                                                      fit: BoxFit.cover)),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Fun Coffee',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          'Kalasua Cafe',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w300,
                                              color: Colors.grey,
                                              fontSize: 10),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'IDR 21,000',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 1),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.all(4),
                                    width: 186,
                                    height: 230,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2D2C2C),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => dark()),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'hero-tag-for-image3',
                                            child: Container(
                                              height: 150,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/3.jpg'),
                                                      fit: BoxFit.cover)),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Dark Coffee',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          'Dream Coffee',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w300,
                                              color: Colors.grey,
                                              fontSize: 10),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'IDR 19,000',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 1),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.all(4),
                                    width: 186,
                                    height: 230,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2D2C2C),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      africano()),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'hero-tag-for-image4',
                                            child: Container(
                                              height: 150,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/4.jpg'),
                                                      fit: BoxFit.cover)),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Africano Coffee',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          'Space Cafe',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w300,
                                              color: Colors.grey,
                                              fontSize: 10),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'IDR 35,000',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 1),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.all(4),
                                    width: 186,
                                    height: 230,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2D2C2C),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      venomous()),
                                            );
                                          },
                                          child: Hero(
                                            tag: 'hero-tag-for-image5',
                                            child: Container(
                                              height: 150,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/5.jpg'),
                                                      fit: BoxFit.cover)),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Venomous Coffee',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          'Berjumpa Cafe',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w300,
                                              color: Colors.grey,
                                              fontSize: 10),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'IDR 10,000',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Recommended',
                                    style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      'View all',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFB5A99D)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ContainerWidget(
                              item: Item(
                                name: 'Cappuccino Coffee',
                                description: 'Senja Cafe',
                                imageUrl: 'assets/images/6.jpg',
                                rating: 4.9,
                                location: '21 meters',
                                price: 30000,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 0),
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Discount',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    height: 174,
                                    width: MediaQuery.of(context).size.width,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      physics: BouncingScrollPhysics(),
                                      children: [
                                        Container(
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Image.asset(
                                              'assets/images/promo.jpg',
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Image.asset(
                                              'assets/images/promo_2.jpg',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    if (isSearching) {
      setState(() {
        isSearching = false;
      });
      return false;
    } else {
      // Tampilkan pop-up konfirmasi keluar
      return (await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: Colors.white,
              title: Text('Exit App'),
              content: Text('Are you sure want to exit?'),
              actions: <Widget>[
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text('No'),
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Color(0xFFE17A1B)),
                ),
                TextButton(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: Text('Yes'),
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Color(0xFFE17A1B)),
                ),
              ],
            ),
          )) ??
          false;
    }
  }

  void _onButtonTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  CustomButton({required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFFDA7911) : Color(0xFF211F1F),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.white, // Warna border putih
          width: 0.5,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CustomBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    paint.color = Color(0xFF211F1F); // Warna latar belakang utama

    final Path backgroundPath = Path();
    backgroundPath.addRect(Rect.fromLTWH(0, 0, size.width, size.height));
    canvas.drawPath(backgroundPath, paint);

    // Lingkaran besar berwarna hitam di bagian atas tengah
    paint.color = Color(0xFFDA7911);
    final double bigCircleRadius = 500.0;
    final Offset bigCircleCenter =
        Offset(size.width / 2, bigCircleRadius + -810);
    canvas.drawCircle(bigCircleCenter, bigCircleRadius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
