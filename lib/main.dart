import 'package:coffee_shop/appBar/cart_screen.dart';
import 'package:coffee_shop/appBar/favorite_screen.dart';
import 'package:coffee_shop/appBar/home_screen.dart';
import 'package:coffee_shop/appBar/order_screen.dart';
import 'package:coffee_shop/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/sign_in.dart';
import 'package:coffee_shop/splash_screen.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:coffee_shop/get_started.dart';
import 'package:coffee_shop/appBar/inbox_screen.dart';
import 'package:provider/provider.dart';

class Item {
  String name;
  String description;
  String imageUrl;
  double rating;
  String location;
  double price;

  Item({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.location,
    required this.price,
  });
}

class AppState extends ChangeNotifier {
  List<Item> items = [];
  List<Item> favoriteItems = [];

  void addToFavorites(Item item) {
    if (!favoriteItems.contains(item)) {
      favoriteItems.add(item);
    } else {
      favoriteItems.remove(item);
    }
    notifyListeners();
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
        routes: {
          '/getStarted': (context) => getStarted(),
          '/signUp': (context) => signIn(),
          'homeScreen': (context) => homeScreen(username: 'Hannan'),
          '/mainMenu': (context) => mainMenu(),
          '/inboxScreen': (context) => inboxScreen(),
          'orderScreen': (context) => orderScreen(),
          'cartScreen': (context) => cartScreen(),
          'favoriteScreen': (context) => FavoriteScreen(),
        },
      ),
    );
  }
}
