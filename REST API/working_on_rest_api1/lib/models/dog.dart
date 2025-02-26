// Define the Dog model
class Dog {
  final String imageUrl;
  final String breed;

  Dog({required this.imageUrl, required this.breed});

  factory Dog.fromJson(Map<String, dynamic> json) {
    return Dog(
      imageUrl: json['message'],
      breed: json['message'].contains('/')
          ? json['message'].split('/')[4]
          : 'Unknown', // Extract breed from image URL
    );
  }
}
