String reverseString(String input) {
  //  String originalString = "hello";
  // String reversedString = reverseString(originalString);
  // print("Original String: $originalString");
  // print("Reversed String: $reversedString");
  List<String> reversedChars = [];
  for (int i = input.length - 1; i >= 0; i--) {
    reversedChars.add(input[i]);
  }
  return reversedChars.join();
}

void main() {
 String originalString = "hello";
  print("String without duplicates: ${removeDuplicates(originalString)}");
  String hi = "boom,boo";
  List<String>lo = hi.split(' ');
  print(lo);

  
}


String removeDuplicates(String input) {
  List<String> uniqueChars = [];
  for (int i = 0; i < input.length; i++) {
    if (!uniqueChars.contains(input[i])) {
      uniqueChars.add(input[i]);
    }
  }
  return uniqueChars.join();
}

int countVowels(String input) {
  // String testString = "Dart is fun!";
  // print("Vowel count: ${countVowels(testString)}");
  int vowelCount = 0;
  for (int i = 0; i < input.length; i++) {
    if ('aeiou'.contains(input[i].toLowerCase())) {
      vowelCount++;
    }
  }
  return vowelCount;
  
}






