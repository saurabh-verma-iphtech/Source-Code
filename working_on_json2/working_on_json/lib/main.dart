import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

//  command after saving this file: flutter pub run build_runner build
part 'main.g.dart';

@JsonSerializable() // This annotation tells json_serializable to generate the serialization code
class User {
  final String name;
  final int age;
  final String email;

  User({required this.name, required this.age, required this.email});

  // The generated fromJson and toJson methods
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

void main() {
  runApp(JsonFile());
}

class JsonFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSON Parsing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserListScreen(),
    );
  }
}

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  late Future<List<User>> _userList;

  // Simulating an API call by using a delay
  Future<List<User>> fetchUsers() async {
    // Example of raw JSON data (can be fetched from an API)
    const String jsonString = '''
    [
      {"name": "Saurabh Verma", "age": 25, "email": "saurabh@example.com"},
      {"name": "Shivam Mishra", "age": 28, "email": "shivam@example.com"},
      {"name": "Vageesh Singh", "age": 25, "email": "vageesh@example.com"},
      {"name": "Priyanshu Pandey", "age": 23, "email": "priyanshu@example.com"},
      {"name": "Utakarsh Verma", "age": 24, "email": "utakarsh@example.com"},
      {"name": "Saksham Mishra", "age": 25, "email": "saksham@example.com"},
      {"name": "Ravi Gupta", "age": 23, "email": "ravi@example.com"}
    ]
    ''';

    // Parse the JSON string into a List of User objects
    List<dynamic> userListJson = jsonDecode(jsonString);
    return userListJson.map((json) => User.fromJson(json)).toList();
  }

  @override
  void initState() {
    super.initState();
    _userList = fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title:const Text('User List'),
      ),
      body: FutureBuilder<List<User>>(
        future: _userList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            List<User> users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text('Age: ${user.age}\nEmail: ${user.email}'),
                );
              },
            );
          } else {
            return const Center(child: Text('No data available.'));
          }
        },
      ),
    );
  }
}
