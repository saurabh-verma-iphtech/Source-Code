void main() {
  //    String : holds a sequence of UTF-16 code units.

  // String Delimiters -: are used to define string literals.
  // Delimiters for String:
  // -Single Quotes (')
  // -Double Quotes (")
  // -Triple Quotes (''' or """")

// Examples....
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";
  print("$s1, $s2, $s3, $s4");

// ############################################################################
  // Raw Strings (r Prefix) or \ -: Used to prevent escape sequences from being processed.
  String string =
      r'This is a raw string \n It does not process escape sequences.';
  print(string);

  String str0 = "This is a raw string using \\n It does not escape sequences.";
  print(str0);

// ############################################################################
  // String INTERPOLATION---: Used to embed expressions inside the strings using the '$' symbol.
  // This makes it easy to create dynamic strings without using concatenation.

  //1. Embedding Variables:
  var num = 100;
  var str = "Embedded";
  print("Embedding a variable value in string :$num ");
  print("Embedding a variable value in string :$str ");

  // 2. Embedding Expressions:
  int a = 10, b = 20;
  print("Embedding an expression in string : ${a + b} ");

  // 3. Embedding Methods and Properties:
  String name = "saurabh";
  print("Embedding a method in string : ${name.toUpperCase()} ");

  // 4. Multiline String Manipulation---:
  int age = 20;
  print('''
Name:$name
Age:$age
''');

// ############################################################################
// String Conctenation---:
// 1. Using the '+' operator:
  String s5 = "Hello, ";
  String s6 = "World!";
  String s7 = s5 + s6;
  print(s7);

// 2. Using Adjacent String literals----:
  String s8 = 'Hello, ' 'currently ' 'i\'m ' 'learning ' 'Dart';
  print(s8);

// 3. Using String Interpolation----:
  String s9 = "Hello, $s6";
  print(s9);

// ############################################################################
// To create a multi-line string, use a 'triple quote' with either single or double quotation marks:
  String str1 = '''
This is a multi-line string.
It has multiple lines.
''';
  print(str1);
// Or
  String str2 = """
This is a multi-line string.
It has multiple lines.
""";
  print(str2);
}
