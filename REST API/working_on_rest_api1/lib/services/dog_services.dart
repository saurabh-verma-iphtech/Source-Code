import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/dog.dart';

class DogService {
  static Future<Dog> fetchRandomDog() async {
    final response =
        await http.get(Uri.parse('https://dog.ceo/api/breeds/image/random'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return Dog.fromJson(data);
    } else {
      throw Exception('Failed to load dog');
    }
  }
}
