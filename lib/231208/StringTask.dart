class Word {
  static const vowel = 'aeiou';
  String word;

  bool isVowel(int i) {
    return vowel.contains(word.substring(i, i + 1)) ||
        vowel.toUpperCase().contains(word.substring(i, i + 1));
  }

  bool isConsonant(int i) {
    return !isVowel(i);
  }

  Word({
    required this.word,
  });
}

void main() {
  final word = Word(word: 'CaBEEEDdedasdf');

  for (int i = 0; i < word.word.length; i++) {
    String subWord = word.word.substring(i, i+1);
    print('$subWord isVowel: ${word.isVowel(i)} And isConsonant: ${word.isConsonant(i)}');
  }
}