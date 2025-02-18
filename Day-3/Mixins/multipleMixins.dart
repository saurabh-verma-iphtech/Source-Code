mixin Saurabh {
  void name() => print("I am Saurabh");
}
mixin Language {
  void language() =>
      print("Currently, I am learing Dart Programming Language.");
}

class Me with Saurabh, Language {
  void aboutMe() =>
      print("Your are going to know about my currnt learning Skills:");
}

void main() {
  Me obj = Me();
  obj.aboutMe();
  obj.name();
  obj.language();
}
