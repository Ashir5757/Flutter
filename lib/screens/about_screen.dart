import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  final List<Map<String, dynamic>> landmarks = const [
    {
      'name': 'Eiffel Tower',
      'color': Colors.blue,
      'icon': Icons.architecture,
    },
    {
      'name': 'Statue of Liberty',
      'color': Colors.green,
      'icon': Icons.flag,
    },
    {
      'name': 'Taj Mahal',
      'color': Colors.orange,
      'icon': Icons.account_balance,
    },
    {
      'name': 'Great Wall of China',
      'color': Colors.red,
      'icon': Icons.landscape,
    },
    {
      'name': 'Pyramids of Giza',
      'color': Colors.yellow,
      'icon': Icons.diamond,
    },
    {
      'name': 'Sydney Opera House',
      'color': Colors.purple,
      'icon': Icons.theaters,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Famous Landmarks'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.8,
        ),
        itemCount: landmarks.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: landmarks[index]['color'] as Color,
                    child: Icon(
                      landmarks[index]['icon'] as IconData,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        landmarks[index]['name'] as String,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}