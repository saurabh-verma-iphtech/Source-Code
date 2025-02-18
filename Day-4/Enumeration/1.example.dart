enum Days { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

void main() {
  Days today = Days.Friday;

  print(Days.values); // It will print values.
  print(Days.values.length); // It will print 7.
  print(Days.values.contains(Days.Friday)); // It will print true.
  print(Days.values.indexOf(Days.Friday)); // It will print 5.
  print(Days.values.indexOf(Days.Sunday)); // It will print 6.
  print(today); // Output: Days.Friday

  // Iterating over enum values:
  for (var day in Days.values) {
    print(day); // It will print all days.
  }
}
