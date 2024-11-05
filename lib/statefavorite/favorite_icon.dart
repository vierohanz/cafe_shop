import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:coffee_shop/main.dart';

class FavoriteIcon extends StatelessWidget {
  final Item item;

  FavoriteIcon({required this.item});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        bool isFavorite = appState.items.contains(item);

        return IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : null,
          ),
          onPressed: () {
            if (isFavorite) {
              appState.items.remove(item);
            } else {
              appState.addToFavorites(item);
            }
          },
        );
      },
    );
  }
}
