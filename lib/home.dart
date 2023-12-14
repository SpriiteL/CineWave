import 'package:flutter/material.dart';

class AppContent extends StatefulWidget {
  @override
  _AppContentState createState() => _AppContentState();
}

class _AppContentState extends State<AppContent> {
  // Liste des images que vous souhaitez afficher
  final List<String> images = [
    'lib/assets/maxresdefault.jpg',
    'lib/assets/avatar2.jpeg',
  ];

  // Index de l'image actuellement affichée
  int currentIndex = 0;

  // Méthode pour changer à l'image suivante
  void nextImage() {
    setState(() {
      currentIndex = (currentIndex + 1) % images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF222222),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // PageView pour afficher les images
          Expanded(
            child: PageView.builder(
              itemCount: images.length,
              controller: PageController(initialPage: currentIndex),
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Image.asset(
                  images[index],
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          // Flèche pour passer à l'image suivante
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: nextImage,
            color: Colors.white,
          ),
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: nextImage,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
