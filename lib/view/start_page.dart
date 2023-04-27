import 'package:flutter/material.dart';
import 'package:phrases_of_day/data/phrases_data.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final phrase = PhrasesData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: Colors.black,
      body: body,
    );
  }

  AppBar get appBar {
    return AppBar(
      title: const Text('Phrases of Day'),
      backgroundColor: Colors.greenAccent,
      elevation: 0,
    );
  }

  Widget get body {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [icon, title, phrasesButton],
      ),
    );
  }

  Icon get icon {
    return const Icon(Icons.message_rounded, size: 120, color: Colors.green);
  }

  Widget get title {
    return Text(
      phrase.generatePhrase,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 20, color: Colors.black54));
  }

  Widget get phrasesButton {
    return ElevatedButton(
      onPressed: () => setState(() => phrase.generatePhrasesRandom),
      style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
      child: const Text('New Phrase', style: TextStyle(fontSize: 20)));
  }
}
