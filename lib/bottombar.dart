import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // Définir le type sur fixed
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Recherche',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_activity),
          label: 'Reservation',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.videocam),
          label: 'Autre',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profil',
        ),
      ],
      unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
      selectedItemColor: Color.fromARGB(255, 255, 255, 255),
      backgroundColor: const Color(0xFF0B2F44),
      showSelectedLabels: true, // Afficher les labels pour les éléments sélectionnés
      showUnselectedLabels: false, // Masquer les labels pour les éléments non sélectionnés
    );
  }
}
