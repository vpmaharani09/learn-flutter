import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  incrementButton() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Statefull widget'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              number.toString(),
              style: TextStyle(
                  fontSize: 20 + number.toDouble(),
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                            side: const BorderSide(color: Colors.red))),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    minimumSize:
                        MaterialStateProperty.all<Size>(const Size(120, 50))),
                onPressed: incrementButton,
                child: const Text(
                  'Tambah bilangan',
                  style: TextStyle(color: Colors.white),
                ))
          ]),
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   // const MyApp({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'First tutorial flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("flutter eps 1"),
//         ),
//         body: Center(
//             child: Container(
//                 color: Colors.lightBlue,
//                 width: 150,
//                 height: 80,
//                 child: const Text(
//                   "seminggu bisa flutter dan dapat bekerja dgn baik",
//                   // maxLines: 2,
//                   // overflow: TextOverflow.ellipsis,
//                   // softWrap: false,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//                 ))),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Startup Name Generator',
//       home: RandomWords()
//     );
//   }
// }

// class RandomWords extends StatefulWidget {
//   // const RandomWords({Key? key}) : super(key: key);

//   @override
//   _RandomWordsState createState() => _RandomWordsState();
// }

// class _RandomWordsState extends State<RandomWords> {
//   final _suggestions = <WordPair>[];
//   final _biggerFont = const TextStyle(fontSize: 18.0);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Name Generator'),
//       ),
//       body: _buildSuggestions(),
//     );
//   }

//   Widget _buildSuggestions() {
//     return ListView.builder(
//         padding: const EdgeInsets.all(16.0),
//         itemBuilder: (context, i) {
//           if (i.isOdd) return const Divider();

//           final index = i ~/ 2;
//           if (index >= _suggestions.length) {
//             _suggestions.addAll(generateWordPairs().take(10));
//           }
//           return _buildRow(_suggestions[index]);
//         });
//   }

//   Widget _buildRow(WordPair pair) {
//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//     );
//   }
// }
