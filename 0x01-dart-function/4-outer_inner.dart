void outer(String name, String id) {
  // Split full name into first and last name
  var parts = name.split(" ");
  String firstName = parts[0];
  String lastName = parts[1];

  // Inner function
  String inner() {
    // Take the first letter of the last name
    String letter = lastName[0];
    return "Hello Agent $letter.$firstName your id is $id";
  }

  print(inner());
}
