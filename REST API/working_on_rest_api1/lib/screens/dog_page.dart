import 'package:flutter/material.dart';
import '../models/dog.dart';
import '../services/dog_services.dart';

class DogPage extends StatefulWidget {
  @override
  _DogPageState createState() => _DogPageState();
}

class _DogPageState extends State<DogPage> {
  late Future<Dog> futureDog;

  @override
  void initState() {
    super.initState();
    futureDog = DogService.fetchRandomDog();
  }

  void _refreshDog() {
    setState(() {
      futureDog = DogService.fetchRandomDog();
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Random Dog',
          style: TextStyle(fontWeight: FontWeight.bold,),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _refreshDog,
          ),
        ],
      ),
      body: Center(
        child: FutureBuilder<Dog>(
          future: futureDog,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              final dog = snapshot.data!;
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.only(top: 100)),
                  Flexible(
                    child: Image.network(
                      dog.imageUrl,
                      width: double.infinity, // Fit to screen width
                      height: screenHeight * 0.4, // Set max height
                      fit: BoxFit.contain, // Prevent overflow
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    dog.breed,
                    style: TextStyle(
                      fontSize: screenWidth * 0.06, // Responsive text
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: screenWidth * 0.6, // Responsive button width
                    child: ElevatedButton(
                      onPressed: _refreshDog,
                      child: const Text("Get New Dog"),
                    ),
                  ),
                ],
              );
            } else {
              return const Text('No data available');
            }
          },
        ),
      ),
    );
  }
}
