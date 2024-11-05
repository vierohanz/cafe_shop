import 'package:flutter/material.dart';

class cartScreen extends StatefulWidget {
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<cartScreen> {
  List<bool> check = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<int> itemCountList = [0, 0, 0, 0, 0];

  void incrementItem(int index) {
    setState(() {
      itemCountList[index]++;
    });
  }

  void decrementItem(int index) {
    if (itemCountList[index] > 0) {
      setState(() {
        itemCountList[index]--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
          ),
          decoration: BoxDecoration(
            color: Color(0xFF211F1F),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Checkbox(
                            value: check[0],
                            onChanged: (bool? value) {
                              setState(() {
                                check[0] = value!;
                              });
                            },
                            checkColor: Colors.black,
                            activeColor: Color(0xFFFAB778),
                            // shape: CircleBorder(),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Pickup',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                Text(
                                  'order and pickup in outlet',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFA49F9F)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Color(0xFF211F1F).withOpacity(0.4),
                          border: Border.all(color: Color(0xFFDA7911))),
                      child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'Change',
                              style: TextStyle(
                                  color: Color(0xFFDA7911),
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                width: MediaQuery.of(context).size.width,
                height: 43,
                decoration: BoxDecoration(
                    color: Color(0xFF423E3E),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Outlet: Kalasua Cafe',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Text(
                            'Street Banjarsari  Selatan  No.54, Tembalang',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFA49F9F)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Order',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      child: Text(
                        '+ Add Orders',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFFDA7911)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Divider(
                  height: 10,
                  thickness: 1,
                ),
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            margin: EdgeInsets.only(right: 10),
                            child: Checkbox(
                              value: check[1],
                              onChanged: (bool? value) {
                                setState(() {
                                  check[1] = value!;
                                });
                              },
                              checkColor: Colors.black,
                              activeColor: Color(0xFFFAB778),
                              // shape: CircleBorder(),
                            ),
                          ),
                          Container(
                            width: 81,
                            height: 65,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/6.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cappucinno',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Hot',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  'IDR 30,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.edit_sharp,
                            color: Colors.white,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 15,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              topLeft: Radius.circular(10))),
                                      child: GestureDetector(
                                        onTap: () => decrementItem(0),
                                        child: Center(
                                            child: Icon(
                                          Icons.remove,
                                          size: 13,
                                        )),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 3, right: 3),
                                      width: 15,
                                      height: 13,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          '${itemCountList[0]}',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 15,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(10),
                                              topRight: Radius.circular(10))),
                                      child: GestureDetector(
                                        onTap: () => incrementItem(0),
                                        child: Center(
                                            child: Icon(
                                          Icons.add,
                                          size: 13,
                                        )),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            margin: EdgeInsets.only(right: 10),
                            child: Checkbox(
                              value: check[2],
                              onChanged: (bool? value) {
                                setState(() {
                                  check[2] = value!;
                                });
                              },
                              checkColor: Colors.black,
                              activeColor: Color(0xFFFAB778),
                              // shape: CircleBorder(),
                            ),
                          ),
                          Container(
                            width: 81,
                            height: 65,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/5.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Oak Coffee',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Ice',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  'IDR 21,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.edit_sharp,
                            color: Colors.white,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 15,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              topLeft: Radius.circular(10))),
                                      child: GestureDetector(
                                        onTap: () => decrementItem(0),
                                        child: Center(
                                            child: Icon(
                                          Icons.remove,
                                          size: 13,
                                        )),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 3, right: 3),
                                      width: 15,
                                      height: 13,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          '${itemCountList[1]}',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 15,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(10),
                                              topRight: Radius.circular(10))),
                                      child: GestureDetector(
                                        onTap: () => incrementItem(0),
                                        child: Center(
                                            child: Icon(
                                          Icons.add,
                                          size: 13,
                                        )),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            margin: EdgeInsets.only(right: 10),
                            child: Checkbox(
                              value: check[3],
                              onChanged: (bool? value) {
                                setState(() {
                                  check[3] = value!;
                                });
                              },
                              checkColor: Colors.black,
                              activeColor: Color(0xFFFAB778),
                              // shape: CircleBorder(),
                            ),
                          ),
                          Container(
                            width: 81,
                            height: 65,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/3.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dark Coffee',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Ice',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  'IDR 15,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.edit_sharp,
                            color: Colors.white,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 15,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              topLeft: Radius.circular(10))),
                                      child: GestureDetector(
                                        onTap: () => decrementItem(0),
                                        child: Center(
                                            child: Icon(
                                          Icons.remove,
                                          size: 13,
                                        )),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 3, right: 3),
                                      width: 15,
                                      height: 13,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          '${itemCountList[2]}',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 15,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(10),
                                              topRight: Radius.circular(10))),
                                      child: GestureDetector(
                                        onTap: () => incrementItem(0),
                                        child: Center(
                                            child: Icon(
                                          Icons.add,
                                          size: 13,
                                        )),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            margin: EdgeInsets.only(right: 10),
                            child: Checkbox(
                              value: check[4],
                              onChanged: (bool? value) {
                                setState(() {
                                  check[4] = value!;
                                });
                              },
                              checkColor: Colors.black,
                              activeColor: Color(0xFFFAB778),
                              // shape: CircleBorder(),
                            ),
                          ),
                          Container(
                            width: 81,
                            height: 65,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/4.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Oak Coffee',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Ice',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  'IDR 21,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.edit_sharp,
                            color: Colors.white,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 15,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              topLeft: Radius.circular(10))),
                                      child: GestureDetector(
                                        onTap: () => decrementItem(0),
                                        child: Center(
                                            child: Icon(
                                          Icons.remove,
                                          size: 13,
                                        )),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 3, right: 3),
                                      width: 15,
                                      height: 13,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          '${itemCountList[3]}',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 15,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(10),
                                              topRight: Radius.circular(10))),
                                      child: GestureDetector(
                                        onTap: () => incrementItem(0),
                                        child: Center(
                                            child: Icon(
                                          Icons.add,
                                          size: 13,
                                        )),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            margin: EdgeInsets.only(right: 10),
                            child: Checkbox(
                              value: check[5],
                              onChanged: (bool? value) {
                                setState(() {
                                  check[5] = value!;
                                });
                              },
                              checkColor: Colors.black,
                              activeColor: Color(0xFFFAB778),
                              // shape: CircleBorder(),
                            ),
                          ),
                          Container(
                            width: 81,
                            height: 65,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/1.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'White Coffee',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Ice',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  'IDR 11,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.edit_sharp,
                            color: Colors.white,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 15,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              topLeft: Radius.circular(10))),
                                      child: GestureDetector(
                                        onTap: () => decrementItem(0),
                                        child: Center(
                                            child: Icon(
                                          Icons.remove,
                                          size: 13,
                                        )),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 3, right: 3),
                                      width: 15,
                                      height: 13,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          '${itemCountList[4]}',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 15,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(10),
                                              topRight: Radius.circular(10))),
                                      child: GestureDetector(
                                        onTap: () => incrementItem(0),
                                        child: Center(
                                            child: Icon(
                                          Icons.add,
                                          size: 13,
                                        )),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                height: 21,
                decoration: BoxDecoration(color: Color(0xFFDA7911)),
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '+ Add your order to get voucher',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.justify,
                      ),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                ),
              ),
              Container(
                height: 65,
                decoration: BoxDecoration(color: Color(0xFFE9B42D)),
                child: Row(
                  children: [
                    Container(),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.discount_sharp,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Use Voucher',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                thickness: 1,
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(color: Color(0xFF211F1F)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 1,
                                width: 120,
                              ),
                              Text(
                                'Price:',
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 165, 161, 161),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
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
                                    '150,000',
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
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
