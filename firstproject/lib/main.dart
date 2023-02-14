
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
class Person {
  var name;
  var age;

  Person(this.name, this.age); 
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List <String> Images = ["asset/masterSushi.png","asset/ramenCat.webp"];
  final List<Person> entries = [Person("Ophelia", 23), Person("Anna", 23), Person("Amelia", 23)];
  final List<int> colorCodes = <int>[600, 500, 100];

  final TextEditingController _textController1 = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();
  int _result = 0;

  int compteur = 0;

  void changeImg(){
    setState(() {
      compteur = (compteur + 1) % Images.length;
    });
  }

  void _add() {
    setState(() {
      _result =
          int.parse(_textController1.text) + int.parse(_textController2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Somme de deux nombres")),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 10, 0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _textController1,
                decoration: InputDecoration(hintText: "Entrée un nombre"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 10, 30),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _textController2,
                decoration: InputDecoration(hintText: "Entrée un nombre"),
              ),
            ),
            ElevatedButton(
              onPressed: _add,
              child: const Text("Additionner"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
              child: Text(
                "Résultat de l'addition: $_result",
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(30),
            ),
          Row(children: [
            Container(
              padding: const EdgeInsets.all(40),
              child: Image.asset(Images[compteur],
              height: 160,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              width: 150,
              color: Color.fromARGB(255, 20, 188, 225),
              child: const Text("Ce chien est un bon chien",
              softWrap: true,
              style: TextStyle(fontSize: 20),),
            ),
            
          ],),
           Expanded(child: 
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                Person person = entries[index];
                return Container(
                  height: 50,
                  color: Colors.deepPurple[colorCodes[index]],
                  child: Center(child: Text(' nom ${person.name} age ${person.age}')),
                );
              }
            )
           )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: changeImg,
          child: Text("change"),
        ),
      ),
    );
  }
}
