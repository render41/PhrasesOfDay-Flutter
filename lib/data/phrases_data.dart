import 'dart:math';

class PhrasesData {
  List<String> phrases = [
    "Nada é tão ruim que não possa ser piorado.",
    "Pra que tentar se pode desistir agora?",
    "Desiste não. Tudo tem um momento certo para dar errado",
    "É só uma fase. Ainda vai piorar.",
    "O não você já tem. Agora é correr para a humilhação.",
    "Persista, logo desista.",
  ];

  String generatePhrase = "Click to Generate New Phrase";

  String get generatePhrasesRandom {
    var phrasesRandom = Random().nextInt(phrases.length);
    return generatePhrase = phrases[phrasesRandom];
  }
}
