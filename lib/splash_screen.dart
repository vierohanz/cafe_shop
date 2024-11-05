import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1), // Set the duration of the animation
    );

    // Create a scaling animation
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInBack,
    );

    // Attach a listener to the animation to detect when it reaches the end
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // When the animation completes, navigate to the new page
        Timer(Duration(seconds: 1), () {
          Navigator.of(context).pushReplacementNamed('/getStarted');
        });
      }
    });

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    // Dispose of the animation controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double scale = constraints.maxWidth < 600 ? 1.1 : 1.2;
        double imageSize = 430 * scale; // Adjust the image size as needed

        return Scaffold(
          backgroundColor: Color(0xFF231A10),
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Transform.scale(
                  scale: scale,
                  child: ScaleTransition(
                    scale: _animation,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: imageSize,
                      height: imageSize,
                      child: Center(
                        child: Image.asset('assets/images/good_day.png'),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image:
                                AssetImage('assets/images/home_accesoris.png'),
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
