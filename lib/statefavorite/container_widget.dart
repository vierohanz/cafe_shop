import 'package:coffee_shop/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/main.dart';
import 'package:provider/provider.dart';

class ContainerWidget extends StatelessWidget {
  final Item item;

  ContainerWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      width: MediaQuery.of(context).size.width,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF2D2C2C),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 8),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => mainMenu()));
                },
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage(item.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 13, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xFFFFFFFFF),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    item.description,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      color: Color(0xFFF0E2D3),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rate_rounded,
                        color: Color(0xFFDA7911),
                      ),
                      Text(
                        '  ${item.rating} (${756} Reviews)',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          fontWeight: FontWeight.w200,
                          color: Color(0xFFDA7911),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: Color(0xFF544332),
                      ),
                      Text(
                        '  ${item.location}',
                        style: TextStyle(
                          color: Color(0xFFBCB4B4),
                          fontFamily: 'Poppins',
                          fontSize: 11,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    ' IDR ${item.price.toInt()}',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Consumer<AppState>(
                builder: (context, appState, child) {
                  bool isFavorite = appState.favoriteItems.contains(item);
                  return Container(
                    child: IconButton(
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : Color(0xFFDAD0C6),
                      ),
                      onPressed: () {
                        appState.addToFavorites(item);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
