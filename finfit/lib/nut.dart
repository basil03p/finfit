import 'package:flutter/material.dart';
import 'homepage.dart';

class NutritionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: NutritionHomePage(),
    );
  }
}

class NutritionHomePage extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {'name': 'Breakfast', 'icon': 'assets/breakfast.png'},
    {'name': 'Lunch', 'icon': 'assets/lunch.png'},
    {'name': 'Dinner', 'icon': 'assets/dinner.png'},
    {'name': 'Desserts', 'icon': 'assets/dessert.png'},
  ];

  final Map<String, List<Map<String, String>>> foodItems = {
    'Popular Breakfast': [
      {'name': 'Idli', 'image': 'assets/idli.png', 'calories': '120 cal'},
      {'name': 'Dosa', 'image': 'assets/dosa.png', 'calories': '200 cal'},
      {'name': 'Poha', 'image': 'assets/poha.png', 'calories': '250 cal'},
      {'name': 'Paratha', 'image': 'assets/paratha.png', 'calories': '300 cal'},
      {'name': 'Upma', 'image': 'assets/upma.png', 'calories': '180 cal'},
    ],
    'Popular Lunch': [
      {'name': 'Dal Chawal', 'image': 'assets/dal.png', 'calories': '400 cal'},
      {
        'name': 'Rajma Rice',
        'image': 'assets/rajma.png',
        'calories': '450 cal'
      },
      {
        'name': 'Paneer Butter Masala',
        'image': 'assets/paneer.png',
        'calories': '500 cal'
      },
      {'name': 'Thali', 'image': 'assets/thali.png', 'calories': '600 cal'},
      {'name': 'Biryani', 'image': 'assets/biryani.png', 'calories': '700 cal'},
    ],
    'Popular Dinner': [
      {'name': 'Roti Sabzi', 'image': 'assets/roti.png', 'calories': '350 cal'},
      {'name': 'Khichdi', 'image': 'assets/khichdi.png', 'calories': '400 cal'},
      {
        'name': 'Dal Makhani',
        'image': 'assets/dalmakhani.png',
        'calories': '450 cal'
      },
      {
        'name': 'Baingan Bharta',
        'image': 'assets/baingan.png',
        'calories': '300 cal'
      },
      {
        'name': 'Curd Rice',
        'image': 'assets/curdrice.png',
        'calories': '350 cal'
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Food Intake'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/food.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context),
                _buildCategorySection(),
                ...foodItems.entries
                    .map((entry) => _buildFoodSection(entry.key, entry.value))
                    .toList(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        currentIndex: 2,
        onTap: (index) {
          if (index == 3) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Heart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center), label: 'Workout'),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Food'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.deepPurple.withOpacity(0.8),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Calories Available",
                      style: TextStyle(color: Colors.white70)),
                  Text("1,850",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategorySection() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: categories.map((category) {
          return Column(
            children: [
              Image.asset(category['icon']!, width: 80),
              SizedBox(height: 5),
              Text(category['name']!, style: TextStyle(color: Colors.white)),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _buildFoodSection(String category, List<Map<String, String>> items) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: items.map((food) {
                return Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.all(10),
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Image.asset(food['image']!, width: 80, height: 80),
                      SizedBox(height: 5),
                      Text(food['name']!,
                          style: TextStyle(color: Colors.white)),
                      Text(food['calories']!,
                          style:
                              TextStyle(color: Colors.white70, fontSize: 12)),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
