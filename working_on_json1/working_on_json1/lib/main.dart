import 'dart:convert';
import 'package:flutter/material.dart';

class Student {
  final String name;
  final int age;
  final String email;

  Student({required this.name, required this.age, required this.email});

  // Convert JSON to Dart object (Deserialization)
  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      name: json['name'],
      age: json['age'],
      email: json['email'],
    );
  }

  // Convert Dart object to JSON (Serialization)
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'email': email,
    };
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentScreen(),
    );
  }
}

// When you want a StatefulWidget, you must override the createState() method
// Convert StudentScreen to StatefulWidget
// class UserScreen extends StatefulWidget {
//   @override
//   _UserScreenState createState() => _UserScreenState();
// }
// class _StudentScreenState extends State<StudentScreen> {
//   late Student user;
//   late String jsonString;
//   @override
//   void initState() {
//     super.initState();
//     // Example JSON String
//     jsonString = '{"name": "Saurabh", "age": 30,"email":"saurabh@gmail.com"}';
//     // Convert JSON String to Dart Map
//     Map<String, dynamic> userMap = jsonDecode(jsonString);
//     // Deserialize: Convert Map to User object
//     user = Student.fromJson(userMap);
//   }

class StudentScreen extends StatelessWidget {
  final String jsonString = '''
  [
  {"name": "Saurabh", "age": 30, "email": "saurabh@gmail.com"},
  {"name": "Amit", "age": 25, "email": "amit@gmail.com"},
  {"name": "Neha", "age": 28, "email": "neha@gmail.com"},
  {"name": "Rahul", "age": 22, "email": "rahul@gmail.com"},
  {"name": "Priya", "age": 26, "email": "priya@gmail.com"},
  {"name": "Karan", "age": 32, "email": "karan@gmail.com"},
  {"name": "Rina", "age": 27, "email": "rina@gmail.com"},
  {"name": "Vikas", "age": 29, "email": "vikas@gmail.com"},
  {"name": "Anjali", "age": 24, "email": "anjali@gmail.com"},
  {"name": "Ravi", "age": 31, "email": "ravi@gmail.com"},
  {"name": "Simran", "age": 23, "email": "simran@gmail.com"},
  {"name": "Tarun", "age": 34, "email": "tarun@gmail.com"},
  {"name": "Deep", "age": 30, "email": "deepa@gmail.com"},
  {"name": "Siddharth", "age": 28, "email": "siddharth@gmail.com"},
  {"name": "Vandana", "age": 26, "email": "vandana@gmail.com"}
]
''';

  @override
  Widget build(BuildContext context) {
    // Example JSON String
    // String jsonString =
    //     '{"name": "Saurabh", "age": 30,"email":"saurabh@gmail.com"}';

    // // Convert JSON String to Dart Map
    // Map<String, dynamic> studentMap = jsonDecode(jsonString);

    // // Deserialize: Convert Map to User object
    // Student student = Student.fromJson(studentMap);

// ********************************When We have list of Anything****************
    List<dynamic> studentListMap = jsonDecode(jsonString);
    List<Student> students =
        studentListMap.map((map) => Student.fromJson(map)).toList();
// *****************************************************************************

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "User Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.list), // Change this to any icon you prefer
          onPressed: () {
            // You can add any functionality here (e.g., open drawer or go back)
          },
        ),
        centerTitle: false,
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       const Padding(padding: EdgeInsets.all(20)),
      //       const Text('JSON to Dart Object-->',
      //           style: TextStyle(
      //               fontWeight: FontWeight.bold, color: Colors.redAccent)),
      //       Text("Name: ${student.name}", style: const TextStyle(fontSize: 20)),
      //       Text("Age: ${student.age}", style: const TextStyle(fontSize: 20)),
      //       Text("Email: ${student.email}",
      //           style: const TextStyle(fontSize: 20)),
      //       const SizedBox(height: 20),
      //       const Text('Back to JSON-->',
      //           style: TextStyle(
      //               fontWeight: FontWeight.bold, color: Colors.redAccent)),
      //       Text("JSON: ${jsonEncode(student.toJson())}",
      //           style: const TextStyle(fontSize: 16)),
      //     ],
      //   ),
      // ),

// *******************************Body for Displaying List Items***************
      body: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index) {
            return ListTile(
              // leading: CircleAvatar(child: Text(students[index].name[0])),
              title: Text(students[index].name,
                  style: const TextStyle(fontSize: 20)),
              subtitle: Text(
                  "Age: ${students[index].age} | Email: ${students[index].email}"),
            );
          }),

//*****************************************************************************/
    );
  }
}
