import 'dart:ui';
import 'package:flutter/material.dart';

class orderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2, // Jumlah tab yang ingin Anda miliki
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 20,
            backgroundColor: Colors.transparent,
            // Transparent background
            flexibleSpace: Container(
              decoration: BoxDecoration(color: Color(0xFF141414)
                  // gradient: LinearGradient(
                  //     begin: Alignment.topCenter,
                  //     end: Alignment.bottomCenter,
                  //     colors: [
                  //   Color(0xFFDA7911).withOpacity(0.99),
                  //   Color(0xFF211F1F).withOpacity(0.99),
                  // ])
                  ),
            ),

            bottom: TabBar(
              labelColor: Color(0xFFDA7911),
              unselectedLabelColor: Color(0xFFFFFFFFFF),
              indicatorColor: Color(0xFFDA7911),
              dividerColor: Color(0xFF211F1F),
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Text(
                    'Ongoing',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'History',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Color(0xFF211F1F),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/order.png'))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Not order yet',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        Center(
                          child: Text(
                            'You can check orders that are being \nprocessed here',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF211F1F),
                  ),
                  child: SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        physics: BouncingScrollPhysics(),
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 200,
                            decoration: BoxDecoration(
                                color: Color(0xFF2D2C2C),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 1,
                                      offset: Offset(0, 0),
                                      blurRadius: 3,
                                      color: Color(0xFFDA7911))
                                ]),
                            child: Column(
                              children: [
                                // Container(
                                //   width: MediaQuery.of(context).size.width,
                                //   height: 38,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.all(
                                //         Radius.circular(10),
                                //       ),
                                //       color: Color(0xFFDA7911)),
                                //   child: Column(
                                //     mainAxisAlignment: MainAxisAlignment.center,
                                //     crossAxisAlignment: CrossAxisAlignment.center,
                                //     children: [
                                //       Container(
                                //         margin: EdgeInsets.only(left: 10),
                                //         child: Text(
                                //           'Order Complete',
                                //           style: TextStyle(
                                //             fontFamily: 'Poppins',
                                //             fontSize: 18,
                                //             fontWeight: FontWeight.w800,
                                //             color: Color(0xFFFFFFFFFF),
                                //           ),
                                //           textAlign: TextAlign.start,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 10, left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                              ),
                                              child: Icon(
                                                Icons.run_circle,
                                                size: 30,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              child: Text(
                                                'Take Away',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'IDR 18,000',
                                          style: TextStyle(
                                              color: Color(0xFFDA7911),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Divider(
                                    height: 10,
                                    thickness: 1,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Order ID: C+4134132342',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 9,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '30 Des 2023 | 20:25',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 9,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 7, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.coffee,
                                              color: Color(0xFFCABEBE),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 10),
                                              child: Text(
                                                'KALASUA CAFE',
                                                style: TextStyle(
                                                    color: Color(0xFFCABEBE),
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '1 item',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w100,
                                            color: Color(0xFFCABEBE),
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Kopi susu',
                                          style: TextStyle(
                                              color: Color(0xFFCABEBE),
                                              fontFamily: 'Poppins',
                                              fontSize: 10,
                                              fontWeight: FontWeight.w200),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 8, right: 10, left: 10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: Color(0xFF399119),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Text(
                                            'Reorder',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 9,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFCABEBE)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Container(
                                          height: 15,
                                          width: 85,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: Color(0xFF399119),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Text(
                                            'Order Detail',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 9,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFCABEBE)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ]),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Status: ',
                                        style: TextStyle(
                                            color: Color(0xFFCABEBE),
                                            fontFamily: 'Poppins',
                                            fontSize: 11),
                                      ),
                                      Text(
                                        'Successfuly',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'Poppins',
                                            fontSize: 11),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 200,
                            decoration: BoxDecoration(
                                color: Color(0xFF2D2C2C),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 1,
                                      offset: Offset(0, 0),
                                      blurRadius: 3,
                                      color: Color(0xFFDA7911))
                                ]),
                            child: Column(
                              children: [
                                // Container(
                                //   width: MediaQuery.of(context).size.width,
                                //   height: 38,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.all(
                                //         Radius.circular(10),
                                //       ),
                                //       color: Color(0xFFDA7911)),
                                //   child: Column(
                                //     mainAxisAlignment: MainAxisAlignment.center,
                                //     crossAxisAlignment: CrossAxisAlignment.center,
                                //     children: [
                                //       Container(
                                //         margin: EdgeInsets.only(left: 10),
                                //         child: Text(
                                //           'Order Complete',
                                //           style: TextStyle(
                                //             fontFamily: 'Poppins',
                                //             fontSize: 18,
                                //             fontWeight: FontWeight.w800,
                                //             color: Color(0xFFFFFFFFFF),
                                //           ),
                                //           textAlign: TextAlign.start,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 10, left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                              ),
                                              child: Icon(
                                                Icons.delivery_dining,
                                                size: 30,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              child: Text(
                                                'Delivery',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'IDR 20,000',
                                          style: TextStyle(
                                              color: Color(0xFFDA7911),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Divider(
                                    height: 10,
                                    thickness: 1,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Order ID: C+90341367842',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 9,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '2 Des 2023 | 10:25',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 9,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 7, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.coffee,
                                              color: Color(0xFFCABEBE),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 10),
                                              child: Text(
                                                'ANTARIKSA CAFE',
                                                style: TextStyle(
                                                    color: Color(0xFFCABEBE),
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '1 item',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w100,
                                            color: Color(0xFFCABEBE),
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Kopi susu',
                                          style: TextStyle(
                                              color: Color(0xFFCABEBE),
                                              fontFamily: 'Poppins',
                                              fontSize: 10,
                                              fontWeight: FontWeight.w200),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 8, right: 10, left: 10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: Color(0xFFE43636),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Text(
                                            'Reorder',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 9,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFCABEBE)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Container(
                                          height: 15,
                                          width: 85,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: Color(0xFFE43636),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Text(
                                            'Order Detail',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 9,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFCABEBE)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ]),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Status: ',
                                        style: TextStyle(
                                            color: Color(0xFFCABEBE),
                                            fontFamily: 'Poppins',
                                            fontSize: 11),
                                      ),
                                      Text(
                                        'Cancelled',
                                        style: TextStyle(
                                            color: Color(0xFFE43636),
                                            fontFamily: 'Poppins',
                                            fontSize: 11),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 200,
                            decoration: BoxDecoration(
                                color: Color(0xFF2D2C2C),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 1,
                                      offset: Offset(0, 0),
                                      blurRadius: 3,
                                      color: Color(0xFFDA7911))
                                ]),
                            child: Column(
                              children: [
                                // Container(
                                //   width: MediaQuery.of(context).size.width,
                                //   height: 38,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.all(
                                //         Radius.circular(10),
                                //       ),
                                //       color: Color(0xFFDA7911)),
                                //   child: Column(
                                //     mainAxisAlignment: MainAxisAlignment.center,
                                //     crossAxisAlignment: CrossAxisAlignment.center,
                                //     children: [
                                //       Container(
                                //         margin: EdgeInsets.only(left: 10),
                                //         child: Text(
                                //           'Order Complete',
                                //           style: TextStyle(
                                //             fontFamily: 'Poppins',
                                //             fontSize: 18,
                                //             fontWeight: FontWeight.w800,
                                //             color: Color(0xFFFFFFFFFF),
                                //           ),
                                //           textAlign: TextAlign.start,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 10, left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                              ),
                                              child: Icon(
                                                Icons.run_circle,
                                                size: 30,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              child: Text(
                                                'Take Away',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'IDR 25,000',
                                          style: TextStyle(
                                              color: Color(0xFFDA7911),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Divider(
                                    height: 10,
                                    thickness: 1,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Order ID: C+4134132342',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 9,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '30 Des 2023 | 20:25',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 9,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 7, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.coffee,
                                              color: Color(0xFFCABEBE),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 10),
                                              child: Text(
                                                'AFABY CAFE',
                                                style: TextStyle(
                                                    color: Color(0xFFCABEBE),
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '1 item',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w100,
                                            color: Color(0xFFCABEBE),
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Kopi susu',
                                          style: TextStyle(
                                              color: Color(0xFFCABEBE),
                                              fontFamily: 'Poppins',
                                              fontSize: 10,
                                              fontWeight: FontWeight.w200),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 8, right: 10, left: 10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: Color(0xFF399119),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Text(
                                            'Reorder',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 9,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFCABEBE)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Container(
                                          height: 15,
                                          width: 85,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: Color(0xFF399119),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Text(
                                            'Order Detail',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 9,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFCABEBE)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ]),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Status: ',
                                        style: TextStyle(
                                            color: Color(0xFFCABEBE),
                                            fontFamily: 'Poppins',
                                            fontSize: 11),
                                      ),
                                      Text(
                                        'Successfuly',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'Poppins',
                                            fontSize: 11),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 200,
                            decoration: BoxDecoration(
                                color: Color(0xFF2D2C2C),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 1,
                                      offset: Offset(0, 0),
                                      blurRadius: 3,
                                      color: Color(0xFFDA7911))
                                ]),
                            child: Column(
                              children: [
                                // Container(
                                //   width: MediaQuery.of(context).size.width,
                                //   height: 38,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.all(
                                //         Radius.circular(10),
                                //       ),
                                //       color: Color(0xFFDA7911)),
                                //   child: Column(
                                //     mainAxisAlignment: MainAxisAlignment.center,
                                //     crossAxisAlignment: CrossAxisAlignment.center,
                                //     children: [
                                //       Container(
                                //         margin: EdgeInsets.only(left: 10),
                                //         child: Text(
                                //           'Order Complete',
                                //           style: TextStyle(
                                //             fontFamily: 'Poppins',
                                //             fontSize: 18,
                                //             fontWeight: FontWeight.w800,
                                //             color: Color(0xFFFFFFFFFF),
                                //           ),
                                //           textAlign: TextAlign.start,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 10, left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                              ),
                                              child: Icon(
                                                Icons.run_circle,
                                                size: 30,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              child: Text(
                                                'Take Away',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'IDR 18,000',
                                          style: TextStyle(
                                              color: Color(0xFFDA7911),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Divider(
                                    height: 10,
                                    thickness: 1,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Order ID: C+4134132342',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 9,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '30 Des 2023 | 20:25',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 9,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 7, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.coffee,
                                              color: Color(0xFFCABEBE),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 10),
                                              child: Text(
                                                'SENJA CAFE',
                                                style: TextStyle(
                                                    color: Color(0xFFCABEBE),
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '1 item',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w100,
                                            color: Color(0xFFCABEBE),
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Kopi susu',
                                          style: TextStyle(
                                              color: Color(0xFFCABEBE),
                                              fontFamily: 'Poppins',
                                              fontSize: 10,
                                              fontWeight: FontWeight.w200),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 8, right: 10, left: 10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: Color(0xFF399119),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Text(
                                            'Reorder',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 9,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFCABEBE)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Container(
                                          height: 15,
                                          width: 85,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: Color(0xFF399119),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Text(
                                            'Order Detail',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 9,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFCABEBE)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ]),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Status: ',
                                        style: TextStyle(
                                            color: Color(0xFFCABEBE),
                                            fontFamily: 'Poppins',
                                            fontSize: 11),
                                      ),
                                      Text(
                                        'Successfuly',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'Poppins',
                                            fontSize: 11),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 250,
                          ),
                        ],
                      ),
                    ),
                  )),

              // Widget untuk Tab 3
            ],
          ),
        ),
      ),
    );
  }
}
