import 'package:flutter/material.dart';
import 'package:rootally_ai/screens/home_screen.dart';
import 'package:rootally_ai/screens/practice_screen.dart';
import 'package:rootally_ai/screens/profile_screen.dart';
import 'package:rootally_ai/screens/rehab_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  final screens = const [
    HomeScreen(),
    RehabScreen(),
    PracticeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.5),
          onTap: (index) {
            setState((){
              selectedIndex = index;
            });
          },
          showSelectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.wheelchair_pickup_rounded),label: "Rehab"),
            BottomNavigationBarItem(icon: Icon(Icons.timer),label: "Practice"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ],
        ),
      ),
    );
  }
}


