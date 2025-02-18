import 'package:flutter/material.dart';

class AfterLoginScreen extends StatelessWidget {
  const AfterLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Profile Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.purple,
                      child: Icon(Icons.person, color: Colors.white, size: 30),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('User Name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('user@email.com', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Icon(Icons.settings, color: Colors.grey),
                  ],
                ),
              ),
            ),
            
            SizedBox(height: 16),

            // Health Data Card
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Weight: 70kg"),
                        Text("Height: 175cm"),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Age: 28"),
                        Text("BMI: 22.9"),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),

            // Daily Login Streak
            Text("Daily Login Streak", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: ['SU', 'M', 'TU', 'W', 'TH', 'SA']
                  .map((day) => CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.lightBlue[100],
                        child: Text(day, style: TextStyle(fontWeight: FontWeight.bold)),
                      ))
                  .toList(),
            ),

            SizedBox(height: 16),

            // Rate Us
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Rate Us", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        5,
                        (index) => Icon(Icons.star, size: 30, color: index < 3 ? Colors.blue : Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),

            // Social Media and Contact
            Text("Share to social media", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("Contact Us", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Health"),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: "Fitness"),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: "Finance"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
