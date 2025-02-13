void main() {
  // RUNE --: Represents a single Unicode code point.
  // To handle Basic Multilingual Plane (BMP) (like emojis and special symbols).

  // 1. Basic Example
  Runes emoji = Runes('\u2764');
  print(String.fromCharCodes(emoji));

  // 2..runes to get Unicode Values
  String str = '😍👍';
  print("It will print Unicode values of emoji: ${str.runes}");

  // 3.Creating a String from Unicode Values.
   String fireEmoji = String.fromCharCode(0x1F525);
  print(fireEmoji);

// 4.Using Multiple Unicode Characters
  var runeString = String.fromCharCodes([0x1F60D, 0x1F44D]);
  print(runeString);
}
