import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recipe_app/model/recipe_model.dart';

Future<RecipeModel?> recipeItem() async {
  try {
    Uri url = Uri.parse('https://dummyjson.com/recipes');
    print("Fetching data from API...");
    var res = await http.get(url);

    if (res.statusCode == 200) {
      var data = jsonDecode(res.body);
      print("API Response: $data"); 
      return RecipeModel.fromJson(data); 
    } else {
      print('Error: ${res.statusCode}');
      return null;
    }
  } catch (e) {
    print('Exception: $e');
    return null;
  }
}
