import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF222222),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PageView(
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: [
                      Image.asset('lib/assets/maxresdefault.jpg'),
                      Image.asset('lib/assets/avatar2.jpeg'),
                      // Ajoutez d'autres images selon vos besoins
                    ],
                  ),
                  Positioned(
                    left: 0,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.white, // Couleur de la flèche
                      iconSize: 40.0, // Taille de la flèche
                      onPressed: () {
                        if (_currentPage > 0) {
                          _pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      color: Colors.white, // Couleur de la flèche
                      iconSize: 40.0, // Taille de la flèche
                      onPressed: () {
                        if (_currentPage < 2) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Action',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 120,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildRoundedImage('lib/assets/1.jpg'),
                    _buildRoundedImage('lib/assets/2.jpg'),
                    _buildRoundedImage('lib/assets/3.jpg'),
                    _buildRoundedImage('lib/assets/4.jpg'),
                    _buildRoundedImage('lib/assets/1.jpg'),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Horreur',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 120,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildRoundedImage('lib/assets/8.jpg'),
                    _buildRoundedImage('lib/assets/7.jpg'),
                    _buildRoundedImage('lib/assets/6.jpg'),
                    _buildRoundedImage('lib/assets/5.jpg'),
                    _buildRoundedImage('lib/assets/8.jpg'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildRoundedImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          imagePath,
          height: 120,
          width: 90,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
