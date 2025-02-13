void main() {
  bool isRaining = false;
  bool isSnowing = true;
  bool isWindy = false; // Renamed to be more descriptive

  if (isRaining) {
    print("🌧️ It's raining! Bring a raincoat.");
  } else if (isSnowing) {
    print("❄️ It's snowing! Wear a warm jacket.");
  } else if (isWindy) {
    print("💨 It's windy! Better to stay home.");
  } else {
    print("😎 The weather is great! Chill out!");
  }
}
