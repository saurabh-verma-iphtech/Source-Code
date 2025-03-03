import 'package:flutter/material.dart';
import 'package:recipe_app/screen/recipe_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeHomeScreen(),
    )
  );
}

