import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<Widget> widgets = [
    const NewsWidget(),
    const LikesWidget(),
    const ProfileWidget(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
          backgroundColor: const Color.fromARGB(255, 145, 217, 0),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: (int index) {
            currentIndex = index;
            setState(() {});
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.newspaper), label: "News"),
            NavigationDestination(
                icon: Icon(Icons.heart_broken), label: "Likes"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
        body: widgets[currentIndex],
      ),
    );
  }
}

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "News",
            style: TextStyle(fontSize: 28),
          ),
          Icon(
            Icons.newspaper,
            size: 64,
          ),
        ],
      ),
    );
  }
}

class LikesWidget extends StatelessWidget {
  const LikesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 64),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text("Likes",
                style: TextStyle(
                  fontSize: 28,
                )),
            SizedBox(height: 20),
            Center(
              // warum wird der Text nicht zentriert?
              child: Text(
                "Hier findest du deine gelikten Nachrichten.",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text("Profile",
                style: TextStyle(
                  fontSize: 28,
                )),
            SizedBox(height: 20),
            Icon(
              Icons.person,
              size: 64,
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Max Mustermann",
                style: TextStyle(fontSize: 28),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Erstelle nun ein StatefulWidget namens “AppHome”. Das Widget soll zunächst nur ein Scaffold mit AppBar und Titel beinhalten.

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  // Erstelle zur Vorbereitung für eine NavigationBar eine Variable “currentIndex” und eine Liste “screens” aus den drei Screen Widgets aus Aufgabe 1 in deinem StatefulWidget-State.
  final int currentIndex = 0;
  final List<Widget> screens = [
    const NewsWidget(),
    const LikesWidget(),
    const ProfileWidget(),
    // Im Folgenden sollst du damit über die onDestinationSelected Funktion auf den richtigen Screen verweisen.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppHome"),
        backgroundColor: const Color.fromARGB(255, 145, 217, 0),
      ),

// Füge eine NavigationBar zu deinem AppHome Widget hinzu. Die “Destinations” der NavigationBar sollen dabei auf die drei Screens aus Aufgabe 1 führen. Dies kannst du erreichen, indem die “onDestinationSelected” den Index entsprechend setzt.

      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          // currentIndex = index;
          setState(() {});
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.newspaper), label: "News"),
          NavigationDestination(icon: Icon(Icons.heart_broken), label: "Likes"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profilce"),
        ],
      ),
    );
  }
}
