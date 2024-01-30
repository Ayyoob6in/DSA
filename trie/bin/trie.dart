class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEndOfWord = false;
}

class Trie {
  TrieNode root = TrieNode();

  void insert(String word) {
    TrieNode node = root;

    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!node.children.containsKey(char)) {
        node.children[char] = TrieNode();
      }
      node = node.children[char]!;
    }

    node.isEndOfWord = true;
  }

  bool search(String word) {
    TrieNode node = root;

    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!node.children.containsKey(char)) {
        return false;
      }
      node = node.children[char]!;
    }

    return node.isEndOfWord;
  }

  bool startsWith(String prefix) {
    TrieNode node = root;

    for (int i = 0; i < prefix.length; i++) {
      String char = prefix[i];
      if (!node.children.containsKey(char)) {
        return false;
      }
      node = node.children[char]!;
    }

    return true;
  }
}

void main() {
  Trie trie = Trie();

  // Insert words into the trie
  trie.insert("apple");
  trie.insert("app");
  trie.insert("banana");

  print(trie.search("apple")); 
  print(trie.search('orange'));


  

 
}





//  // Search for words
//   print(trie.search("apple"));    // true
//   print(trie.search("app"));      // true
//   print(trie.search("orange"));   // false


