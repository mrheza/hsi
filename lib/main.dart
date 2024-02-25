import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/profile.dart';
import 'package:slide_indexed_stack/slide_indexed_stack.dart';

void main() {
  runApp(const MyApp());
}

const List<Widget> _pages = <Widget>[
  HomePage(),
  HomePage(),
  HomePage(),
  ProfilePage(),
];

int _selectedIndex = 0;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppElement();
  }
}

class MyAppElement extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HSI Edu',
      theme: ThemeData(
        fontFamily: 'Plus Jakarta Sans',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SlideIndexedStack(
          axis: Axis.horizontal,
          slideOffset: 1,
          duration: const Duration(milliseconds: 250),
          index: _selectedIndex,
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          mouseCursor: SystemMouseCursors.grab,
          backgroundColor: const Color(0xFFF1F1F1),
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: const Color(0xFF233976),
          selectedFontSize: 12,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Akademi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet),
              label: 'Regular',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_sharp),
              label: 'Profil',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
        ),
      ),
    );
  }
}
