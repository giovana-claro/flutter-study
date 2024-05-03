import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

// The state is created and provided to the whole app using a ChangeNotifierProvider. 
// This allows any widget in the app to get hold of the state.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

// MyAppState defines the data the app needs to function
// The state class extends ChangeNotifier, which means that it can notify others about its own changes.
// For example, if the current word pair changes, some widgets in the app need to know.
class MyAppState extends ChangeNotifier {
  var currentWord = WordPair.random();

  void getNext() {
    currentWord = WordPair.random();
    notifyListeners(); // this is a method of the ChangeNotifier, anyone watching MyAppState is notified
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    // Good practice to set variables to access just needed parts of objects
    var pair = appState.currentWord;

    return Scaffold(
      body: Column(
        children: [
          Text('A random idea that has changed:'),
          BigCard(pair: pair),
          ElevatedButton(
            onPressed: () {
              appState.getNext(); // will change the value and notify listeners
            }, 
            child: Text('Next'))
        ],
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(pair.asLowerCase),
      ),
    );
  }
}