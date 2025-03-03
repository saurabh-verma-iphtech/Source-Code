import 'package:flutter/material.dart';
import 'package:recipe_app/model/recipe_model.dart';

class DetailScreen extends StatelessWidget {
  final Recipes recipe;
  const DetailScreen({Key? key, required this.recipe}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              // For detail screen image
              Image.network(
                recipe.image!,
                fit: BoxFit.cover,
                height: 450,
                width: size.width,
              ),
              // For back button
              Padding(
                padding: MediaQuery.of(context).padding,
                child: Positioned(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              Positioned(
                bottom: -50,
                right: 30,
                left: 30,
                child: Container(
                  height: 150,
                  width: size.width,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 4,
                          blurRadius: 2),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recipe.name!,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  recipe.mealType![0],
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  " & ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  recipe.cuisine!,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 50,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            Text(recipe.rating.toString()),
                            const SizedBox(
                              width: 50,
                            ),
                            const Icon(
                              Icons.timer,
                              color: Colors.blueAccent,
                            ),
                            Text(recipe.cookTimeMinutes.toString()),
                            const SizedBox(
                              width: 50,
                            ),
                            const Icon(
                              Icons.accessibility,
                              color: Colors.black,
                            ),
                            Text("${recipe.caloriesPerServing.toString()} kcl"),
                            const SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60,),
                const Text(
                  "Ingredients",
                style: TextStyle(fontSize: 20, color: Colors.blueAccent, fontWeight: FontWeight.bold),
                ),

               Padding(
                  padding: EdgeInsets.only(left: 15,top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(recipe.ingredients!.length, (index){
                      return Text(
                        recipe.ingredients![index],
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
