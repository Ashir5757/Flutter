import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  final List<Map<String, String>> destinations = const [
    {
      'name': 'Paris, France',
      'description': 'The city of love and lights with iconic Eiffel Tower.'
    },
    {
      'name': 'Tokyo, Japan',
      'description': 'A blend of traditional culture and modern technology.'
    },
    {
      'name': 'New York, USA',
      'description': 'The Big Apple with Statue of Liberty and Times Square.'
    },
    {
      'name': 'Sydney, Australia',
      'description': 'Famous for Sydney Opera House and beautiful beaches.'
    },
    {
      'name': 'Rome, Italy',
      'description': 'Ancient history with Colosseum and delicious cuisine.'
    },
    {
      'name': 'Bali, Indonesia',
      'description': 'Tropical paradise with stunning beaches and temples.'
    },
    {
      'name': 'London, UK',
      'description': 'Historical city with Buckingham Palace and Big Ben.'
    },
    {
      'name': 'Dubai, UAE',
      'description': 'Modern city with Burj Khalifa and luxury shopping.'
    },
    {
      'name': 'Barcelona, Spain',
      'description': 'Famous for Gaudí architecture and vibrant culture.'
    },
    {
      'name': 'Cape Town, South Africa',
      'description': 'Beautiful landscapes with Table Mountain and vineyards.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel Destinations'),
      ),
      body: ListView.builder(
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: const Icon(Icons.location_on, color: Colors.blue),
              title: Text(
                destinations[index]['name']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(destinations[index]['description']!),
            ),
          );
        },
      ),
    );
  }
}