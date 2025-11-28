String longestUniqueSubstring(String str) {
  String longest = "";
  String current = "";

  for (int i = 0; i < str.length; i++) {
    String ch = str[i];

    // If the character already exists in current window
    if (current.contains(ch)) {
      // Move window start right past the previous occurrence of ch
      int index = current.indexOf(ch);
      current = current.substring(index + 1);
    }

    current += ch;

    // Check if current is longer than the longest found so far
    if (current.length > longest.length) {
      longest = current;
    }
  }

  return longest;
}
