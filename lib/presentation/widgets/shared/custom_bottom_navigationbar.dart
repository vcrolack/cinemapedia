import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationbar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavigationbar({super.key, required this.currentIndex});

  void onItemTapped(BuildContext context, int index) {
    context.go('/home/$index');
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (value) => onItemTapped(context, value),
        currentIndex: currentIndex,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_max), label: "Inicio"),
          BottomNavigationBarItem(
              icon: Icon(Icons.label_outlined), label: "Categorías"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: "Favoritos"),
        ]);
  }
}
