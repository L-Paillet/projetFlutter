import 'package:flutter/material.dart';

void main() => runApp(Home());
// => runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: const Text("Hello world"),
//         centerTitle: true,
//         shadowColor: Colors.green,
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: const Center(
//         child: Text("Text en dehors de appbar",
//         style: TextStyle(
//           fontSize: 20.0,
//           fontStyle:FontStyle.italic,
//           ),
//         ),
//       )
//     ),
//   )
// );   décocher partie asset

class Home extends StatelessWidget {
  const Home({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Hello world"),
            centerTitle: true,
            shadowColor: Colors.green,
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            children: [Row(children: [
              Container(
                padding: const EdgeInsets.all(40),
                color: Colors.cyan[400],
                child: const Text("Row1"),
              ),
              Container(
                padding: const EdgeInsets.all(40),
                color: Colors.tealAccent[700],
                child: const Text("Row2"),
              ),
              Container(
                padding: const EdgeInsets.all(40),
                color: Colors.blue,
                child: const Text("Row3"),
              ),
            ],)],

            ),
          )
        )
      );
  }
}