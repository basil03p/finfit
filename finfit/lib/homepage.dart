import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'nut.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/nut': (context) => NutritionApp(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
        leading: IconButton(
          icon: Icon(Icons.settings, color: Colors.white),
          onPressed: () {
            // Open settings page (to be implemented)
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout, color: Colors.redAccent),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:
                  AssetImage('assets/fit.png'), // Path to your background image
              fit: BoxFit.cover, // Ensures the image covers the entire screen
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.png'),
                backgroundColor: Colors.grey.shade800,
              ),
              SizedBox(height: 10),
              Text(
                "User Name",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                "user@email.com",
                style: TextStyle(color: Colors.grey),
              ),
              Divider(color: Colors.grey.shade800),
              SizedBox(height: 10),

              /// Daily Streak
              Text(
                "Daily Login Streak",
                style: TextStyle(fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: ["SU", "M", "TU", "W", "TH", "F", "SA"]
                    .map((day) => Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.orange,
                            child: Text(
                              day,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ))
                    .toList(),
              ),
              SizedBox(height: 20),

              /// Achievements
              Text(
                "Achievements",
                style: TextStyle(fontSize: 18),
              ),
              Wrap(
                spacing: 10,
                children: [
                  Chip(label: Text("5 Days Streak!")),
                  Chip(label: Text("10,000 Steps")),
                ],
              ),
              SizedBox(height: 20),

              /// Rate Us
              Text(
                "Rate Us",
                style: TextStyle(fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => Icon(
                    Icons.star_border,
                    color: Colors.orange,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(height: 20),

              /// User Agreement
              ExpansionTile(
                title: Text("User Agreement"),
                children: [
                  ListTile(
                      title: Text("Agreement: All data is stored securely.")),
                ],
              ),
              SizedBox(height: 10),

              /// Contact Us
              ExpansionTile(
                title: Row(
                  children: [
                    // Add some spacing between the icon and text
                    Text(
                      "Contact Us",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.phone, color: Colors.white), // Icon
                    // Text
                  ],
                ),
                children: [
                  ListTile(
                    title: Text("Contact: Alen, Christo, Basil, Christin"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        currentIndex: 3,
        onTap: (index) {
          if (index == 2) {
            Navigator.pushNamed(context, '/nut');
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Heart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center), label: 'Workout'),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Food'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.orange), label: 'Profile'),
        ],
      ),
    );
  }
}
