import 'package:flutter/material.dart';
import 'cat_breed_screen.dart'; // Importar la Pantalla 1
import 'breed_vote_screen.dart'; // Importar la Pantalla 2

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = <Widget>[
    const CatBreedScreen(),
    const BreedVoteScreen(), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.pink],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          title: _buildAppTitle(),
          centerTitle: true,
          elevation: 0,
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Breeds',
            icon: Icon(Icons.pets),
          ),
          BottomNavigationBarItem(
            label: 'Vote',
            icon: Icon(Icons.thumb_up),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildAppTitle() {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: 'Pacifico',
          letterSpacing: 2.0,
        ),
        children: [
          TextSpan(
            text: 'Cat ',
            style: TextStyle(
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black.withOpacity(0.5),
                  offset: const Offset(5, 5),
                ),
              ],
            ),
          ),
          TextSpan(
            text: 'App',
            style: TextStyle(
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black.withOpacity(0.5),
                  offset: const Offset(5, 5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
