import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController editController = TextEditingController();
  String savedText = ''; 



  @override
  void initState() {
    super.initState();
    _loadSavedText(); 
  }

  Future<void> _loadSavedText() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      savedText =
          prefs.getString('savedText') ?? 'No data saved';
    });
  }

  Future<void> _saveText() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('savedText', editController.text);

    setState(() {
      savedText = editController.text; 
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Text Saved!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                  controller: editController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              
              ElevatedButton(
                onPressed: _saveText,
                child: const Text('Save'),
              ),
              const SizedBox(height: 20),

        
              Text(
                'Saved Data: $savedText',
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
