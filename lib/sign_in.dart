import 'package:coffee_shop/bottombar/bottomBar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class signIn extends StatefulWidget {
  const signIn({super.key});
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<signIn> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool rememberMe = false;

  Future<void> _login() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _usernameController.text,
        password: _passwordController.text,
      );

      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => BottomBar(userCredential.user?.email ?? "")),
      );
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Your Email or Password wrong!'),
          action: SnackBarAction(
            label: 'close',
            onPressed: () {},
          ),
        ),
      );

      // ignore: avoid_print
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF282424),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(0.0),
            child: Padding(
              padding: EdgeInsets.only(
                  top: 0.0 * MediaQuery.of(context).size.height),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 360,
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/signin.jpg'),
                              alignment: Alignment.topCenter,
                            ),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black87.withOpacity(0.3),
                                spreadRadius: 1.5,
                                blurRadius: 9,
                                offset: Offset(0, 1),
                              )
                            ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).padding.top * 0.2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'SIGN IN',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color(0xFFB17535),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Column(),
                      ),
                      SizedBox(height: 35),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            focusColor: Colors.amber,
                            labelText: ' Email',
                            fillColor: Colors.black38,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            prefixIcon: Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Icon(
                                Icons.mail,
                                size: 30,
                              ),
                            ),
                            labelStyle: TextStyle(
                              color: Color(0xFF827E7E),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                          controller: _usernameController,
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: TextField(
                            decoration: InputDecoration(
                              labelText: ' Password',
                              fillColor: Colors.black38,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              prefixIcon: Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Icon(
                                  Icons.key,
                                  size: 30,
                                ),
                              ),
                              labelStyle: TextStyle(
                                color: Color(0xFF827E7E),
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                            controller: _passwordController,
                            obscureText: true),
                      ),
                      SizedBox(height: 9),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: rememberMe,
                            onChanged: (bool? value) {
                              setState(() {
                                rememberMe = value!;
                              });
                            },
                            checkColor: Colors.black,
                            activeColor: Color(0xFFFAB778),
                          ),
                          Text(
                            'Remember me',
                            style: TextStyle(color: Color(0xFF827E7E)),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFB17535),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              fixedSize: Size(
                                MediaQuery.of(context).size.width * 0.85,
                                53,
                              ),
                            ),
                            onPressed: () async {
                              await _login();
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Popins',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
