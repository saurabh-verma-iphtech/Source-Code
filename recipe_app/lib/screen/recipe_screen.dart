import 'package:flutter/material.dart';
import 'package:recipe_app/model/recipe_model.dart';
import 'package:recipe_app/screen/detail_screen.dart';
import 'package:recipe_app/service/recipeItem.dart';

class RecipeHomeScreen extends StatefulWidget {
  const RecipeHomeScreen({super.key});

  @override
  State<RecipeHomeScreen> createState() => _RecipeHomeScreenState();
}

class _RecipeHomeScreenState extends State<RecipeHomeScreen> {
  List<Recipes> recipeModel = [];
  bool isLoading = true;

  myRecipes() async {
    print("Fetching recipes..."); 
    var fetchedData = await recipeItem();

    if (fetchedData != null && fetchedData.recipes != null) {
      setState(() {
        recipeModel = fetchedData.recipes!;
        isLoading = false;
      });
      print("Recipes loaded: ${recipeModel.length}"); 
    } else {
      setState(() {
        isLoading = false;
      });
      print("Failed to load recipes."); 
    }
  }

  @override
  void initState() {
    super.initState();
    myRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe App')),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : recipeModel.isEmpty
              ? const Center(child: Text('No Recipes Found')) // API failed
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: recipeModel.length,
                  itemBuilder: (context, index) {
                    final recipes = recipeModel[index];
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailScreen(recipe: recipes)),
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              height: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(recipes.image ?? ''),
                                  fit: BoxFit.fill,
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(-5, 7)),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(30),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          recipes.name ?? 'No Name',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Icon(Icons.star,
                                        color: Colors.orange),
                                    Text(
                                      recipes.rating?.toString() ?? '0.0',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    const Icon(Icons.timer,
                                        color: Colors.orange),
                                    Text(
                                      '${recipes.cookTimeMinutes ?? 0} min',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
    );
  }
}
