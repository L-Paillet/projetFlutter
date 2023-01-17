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
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                Row(
                children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.red,
                      child: const Text('data ligne '),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.blue,
                      child: const Text('data ligne'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.green,
                      child: const Text('data ligne'),
                    ),
                ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.red,
                  child: const Text('data'),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.blue,
                  child: const Text('data'),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.green,
                  child: const Text('data'),
                ),
                ],
            ),
          )
        )
      );
  }
}