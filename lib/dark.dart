import 'package:flutter/material.dart';
import 'package:coffee_shop/readmore.dart';

class dark extends StatefulWidget {
  @override
  _DarkState createState() => _DarkState();
}

class _DarkState extends State<dark> {
  int _selectedIndex = 0;

  void _onButtonTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(0xFF211F1F),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF211F1F),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 480,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFF211F1F),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    image: DecorationImage(
                      image: AssetImage('assets/images/3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 25, top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              size: 35,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFF211F1F).withOpacity(0.5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Hero(
                              tag: 'hero-tag-for-image3',
                              child: Container(
                                padding: EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  'Dark Coffee',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFFFFFFFFF),
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'Black coffee real',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                  color: Color(0xFFD2D1D1),
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 16, top: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: Color(0xFFDA7911),
                                    size: 20,
                                  ),
                                  Text(
                                    '  4.7',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w200,
                                      color: Color(0xFFDA7911),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Description',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFB2B0AE),
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: ReadMoreText(
                          text:
                              'Black coffee is a popular espresso-based coffee beverage that originated in Italy. It is composed of three main ingredients: espresso, steamed milk, and frothed milk.',
                          maxLines: 5,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              'Size',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: Color(0xFFB2B0AE),
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
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
                                    text: 'S',
                                    isSelected: _selectedIndex == 0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 13),
                                child: GestureDetector(
                                  onTap: () {
                                    _onButtonTap(1);
                                  },
                                  child: CustomButton(
                                    text: 'M',
                                    isSelected: _selectedIndex == 1,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 13),
                                child: GestureDetector(
                                  onTap: () {
                                    _onButtonTap(2);
                                  },
                                  child: CustomButton(
                                    text: 'L',
                                    isSelected: _selectedIndex == 2,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 13),
                                child: GestureDetector(
                                  onTap: () {
                                    _onButtonTap(3);
                                  },
                                  child: CustomButton(
                                    text: 'XL',
                                    isSelected: _selectedIndex == 3,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:
          CustomBottomBar(onLeftPressed: () {}, onRightPressed: () {}),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  CustomButton({required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: isSelected ? Colors.transparent : Color(0xFF211F1F),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isSelected
              ? Color(0xFFDA7911)
              : Colors.white, // Warna border putih
          width: 0.5,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: isSelected ? Color(0xFFDA7911) : Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 15,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }
}

class CustomBottomBar extends StatelessWidget {
  final VoidCallback onLeftPressed;
  final VoidCallback onRightPressed;

  CustomBottomBar({required this.onLeftPressed, required this.onRightPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0xFF262626),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                  width: 120,
                ),
                Text(
                  'Price:',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 165, 161, 161),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Row(
                  children: [
                    Text(
                      'IDR ',
                      style: TextStyle(
                        color: Color(0xFFDA7911),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '19,000',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 170,
              height: 50,
              alignment: Alignment.center,
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: Color(0xFFDA7911),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Buy Now',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
