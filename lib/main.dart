// PACKAGE DI LAVORO MATERIAL DESIGN USATO DA GOOGLE E DART DOVE LAVORIAMO.
import 'package:flutter/material.dart';

void main() {
  // LANCIA L'APPLICAZIONE
  runApp(const MyApp());
}


//---------------------------------------------------------------------------------------------------------------------------------------------------------

//
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // COSTRUTTORE MYAPP

  // This widget is the root of your application.
  // OVERRIDE SI ASPETTA WIDGE.
  // build COSTRUISCE LA WIDGE.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // RICEVO UNA MATERIAL DELLA MIA APP.
      title: 'Flutter Demo',    // DO UN TITOLO.
      theme: ThemeData(         // DO UN TEMA.

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),  // INIZIALMENTE HO UN COLORE IL BLU DA UNA CLASSE TIPO COLORE.
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'), // SCHERMATA DI INGRESSO DELLA NOSTRA APPLICAZIONE
    );
  }
}

// -------------------------------------------------------------------------------------------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});   // COSTRUTTORE DEL TITOLO DEFINITO SOPRA DI MyHomePage


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();  // CREO UN NUOVO STATO DA MyHomePage A _MyHomePageState
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold CI AIUTA A COSTRUIRE E AGGIUNGERE FUNZIONALITA' DENTRO L'APP
    return Scaffold(
      appBar: AppBar(
        // BARRA PRINCIPALE PRESENTE IN ALTO
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),    // PRENDE IL TITOLO DELLO STATO WIDGE
      ),
      //----------------------------------------------------------
      body: Center(
        // PARTE CENTRALE DELLA NOSTRA APP
        child: Column(
          // CI POSIZIONIAMO NELLA PARTE CENTRALE DEL NOSTRO BODY
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),    // INSERISCO UN TITOLO NELLA PARTE CENTRALE
            Text(
              '$_counter',  // IL TESTO FA RIFERIMENTO AL COUNTER
              style: Theme.of(context).textTheme.headlineMedium,    // STILE DEL TESTO
            ),
          ],
        ),
      ),
      //-----------------------------------------------------------------
      floatingActionButton: FloatingActionButton(     // AGGIUNGE IL BOTTONE
        onPressed: _incrementCounter,    // SE LO CLICCHI VA A _incrementCounter E INCREMENTA IL COUNTER
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
