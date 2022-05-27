void main() {
  final anagram = Anagrams();

  final bool result = anagram.compareTwoStrings('cafe', 'face');

  print('These two strings have the same letters? $result');
}

class Anagrams {
  bool compareTwoStrings(String stringA, String stringB) {
    final cleanStringA = _cleanString(stringA);
    final cleanStringB = _cleanString(stringB);

    var listA = cleanStringA.split('');
    var listB = cleanStringB.split('');

    listA.sort();
    listB.sort();

    var a = listA.join('');
    var b = listB.join('');

    return a == b;
  }

  String _cleanString(String str) {
    final RegExp regEx = RegExp("[-!\$%^&*()_+|~=`{}\\[\\]:;'<>?,.\\/\"]");

    return str.replaceAll(regEx, '').toLowerCase();
  }
}
