// PACKAGE DI LAVORO MATERIAL DESIGN USATO DA GOOGLE E DART DOVE LAVORIAMO.
// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// UN'APPLICAZIONE FLUTTER E' UN WIDGET.
// UN WIDGET PUO' ESSERE COMPOSTO DA ALTRI WIDGET (ES. UN BOTTONE E' UN WIDGET CHE PUO' CONTENERE UN'ICONA, UN TESTO, ECC...).
// OGNI WIDGET HA UN SUO STATO (STATE) CHE PUO' ESSERE STATICA (STATELESS) O DINAMICA (STATEFUL).

void main() {
  // LANCIA L'APPLICAZIONE
  runApp(const MyApp());
}

//---------------------------------------------------------------------------------------------------------------------------------------------------------

// CLASSE MyApp CHE ESTENDE StatelessWidget (WIDGET SENZA STATO)
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // COSTRUTTORE MYAPP

  // This widget is the root of your application.
  // OVERRIDE SI ASPETTA WIDGET.
  // build COSTRUISCE LA WIDGET.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // RICEVO UNA MATERIAL DELLA MIA APP.
      title: 'Flutter Demo', // DO UN TITOLO.
      theme: ThemeData(
        // DO UN TEMA.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
        ), // INIZIALMENTE HO UN COLORE IL BLU DA UNA CLASSE TIPO COLORE.
      ),
      home: const MyHomePage(
        title: 'Flutter Demo Home Page',
      ), // SCHERMATA DI INGRESSO DELLA NOSTRA APPLICAZIONE
    );
  }
}

// -------------------------------------------------------------------------------------------------------------------------------------------------------

// CLASSE MyHomePage CHE ESTENDE StatefulWidget (WIDGET CON STATO)
class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  }); // COSTRUTTORE DEL TITOLO DEFINITO SOPRA DI MyHomePage

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState(); // CREO UN NUOVO STATO DA MyHomePage A _MyHomePageState
}

//---------------------------------------------------------------------------------------------------------------------------------------------------------

// CLASSE _MyHomePageState CHE ESTENDE State<MyHomePage> (STATO DI MyHomePage)
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
        title: Text(widget.title), // PRENDE IL TITOLO DELLO STATO WIDGET
        actions: [
          // AZIONI CHE POSSONO ESSERE ESEGUITE NELLA BARRA IN ALTO
          IconButton(
            // BOTTONE CON ICONA
            icon: const Icon(Icons.login),
            onPressed: () {
              // QUANDO PREMO IL BOTTONE
              Navigator.push(
                // NAVIGA VERSO UNA NUOVA PAGINA
                context,
                MaterialPageRoute(
                  builder: (context) => _PageLoginState(),
                ), // NUOVA PAGINA DI LOGIN
              );
            },
          ),
        ],
        foregroundColor: const Color.fromARGB(
          255,
          248,
          249,
          250,
        ), // COLORE DEL TESTO E DELLE ICONE
        backgroundColor: const Color.fromARGB(
          255,
          8,
          70,
          141,
        ), // COLORE DI SFONDO DELLA BARRA
        systemOverlayStyle: SystemUiOverlayStyle
            .dark, // COLORE DELLE ICONE DI SISTEMA (BATTERIA, WIFI, ETC...)
        elevation: 50, // OMBRA SOTTO LA BARRA
        shadowColor: const Color.fromARGB(255, 5, 8, 209), // COLORE DELL'OMBRA
        toolbarHeight: 100, // ALTEZZA DELLA BARRA
        toolbarOpacity: 0.8, // OPACITA' DELLA BARRA
        titleTextStyle: TextStyle(),
      ),
      //----------------------------------------------------------
      drawer: Drawer(
        // MENU A SCOMPARSA LATERALE
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // LISTA DI OGGETTI CHE COMPONGONO IL MENU
            const DrawerHeader(
              // TESTATA DEL MENU
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home), // ICONA DI CASA
              title: const Text('Home', style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.pop(context); // CHIUDE IL MENU
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings), // ICONA DI IMPOSTAZIONI
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail), // ICONA DI CONTATTI
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info), // ICONA DI INFORMAZIONI
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      //------------------------------------------------------------

      //------------------------------------------------------------
      body: Center(
        // PARTE CENTRALE DELLA NOSTRA APP
        child: Column(
          // CI POSIZIONIAMO NELLA PARTE CENTRALE DEL NOSTRO BODY
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                fontFamily:
                    'Bungee', // FAMIGLIA DEL CARATTERE PRESO DA GOOGLE FONT E CARICATO IN pubspec.yaml
                color: Colors.blue, // COLORE DEL TESTO
                fontWeight: FontWeight.w800, // SPESSORE DEL TESTO
                fontSize: 15, // DIMENSIONE DEL TESTO
                letterSpacing: 5, // SPAZIATURA TRA LE LETTERE
                wordSpacing: 10, // SPAZIATURA TRA LE PAROLE
                shadows: [
                  Shadow(
                    // OMBRA DEL TESTO ORENDE UNA LISTA SHADOW
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    blurRadius: 3,
                  ),
                ],
              ),
            ), // INSERISCO UN TITOLO NELLA PARTE CENTRALE
            Text(
              '$_counter', // IL TESTO FA RIFERIMENTO AL COUNTER
              style: Theme.of(
                context,
              ).textTheme.headlineMedium, // STILE DEL TESTO
            ),
            TextButton.icon(
              // BOTTONE DI TIPO TESTO CON ICONA
              onPressed:
                  () {}, // AZIONE DA ESEGUIRE QUANDO SI PREME IL BOTTONE (VUOTO PER ORA) SE E' NULL IL BOTTONE E' DISABILITATO
              icon: const Icon(Icons.add), // ICONA DEL BOTTONE
              label: const Text('TextButton'), // TESTO DEL BOTTONE
              style: TextButton.styleFrom(
                // STILE DEL BOTTONE
                // STILE DEL BOTTONE
                foregroundColor: const Color.fromARGB(
                  255,
                  9,
                  1,
                  73,
                ), // COLORE DEL TESTO E DELL'ICONA
                textStyle: const TextStyle(
                  fontSize: 20,
                ), // DIMENSIONE DEL TESTO
              ),
            ), // BOTTONE DI TIPO TESTO
            ElevatedButton.icon(
              onPressed:
                  () {}, // AZIONE DA ESEGUIRE QUANDO SI PREME IL BOTTONE (VUOTO PER ORA) SE E' NULL IL BOTTONE E' DISABILITATO
              icon: const Icon(Icons.add), // ICONA DEL BOTTONE
              label: const Text('ElevatedButton'),
              style: ElevatedButton.styleFrom(
                // STILE DEL BOTTONE
                foregroundColor: const Color.fromARGB(
                  255,
                  248,
                  249,
                  250,
                ), // COLORE DEL TESTO E DELL'ICONA
                backgroundColor: const Color.fromARGB(
                  255,
                  9,
                  1,
                  73,
                ), // COLORE DI SFONDO DEL BOTTONE
                textStyle: const TextStyle(
                  fontSize: 20,
                ), // DIMENSIONE DEL TESTO
                elevation: 10, // OMBRA SOTTO IL BOTTONE
                shadowColor: const Color.fromARGB(
                  255,
                  5,
                  8,
                  209,
                ), // COLORE DELL'OMBRA
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ), // PADDING INTERNO AL BOTTONE
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ), // FORMA DEL BOTTONE (ROTONDITA' DEGLI ANGOLI)
              ),
            ), // BOTTONE ELEVATO

            const Icon(Icons.width_full), // SPACER TRA I BOTTONI

            OutlinedButton.icon(
              onPressed:
                  () {}, // AZIONE DA ESEGUIRE QUANDO SI PREME IL BOTTONE (VUOTO PER ORA) SE E' NULL IL BOTTONE E' DISABILITATO
              icon: const Icon(Icons.add), // ICONA DEL BOTTONE
              label: const Text('OutlinedButton'),
              style: OutlinedButton.styleFrom(
                // STILE DEL BOTTONE
                foregroundColor: const Color.fromARGB(
                  255,
                  9,
                  1,
                  73,
                ), // COLORE DEL TESTO E DELL'ICONA
                side: const BorderSide(
                  color: Color.fromARGB(255, 9, 1, 73),
                  width: 2,
                ), // COLORE E SPESSORE DEL BORDO
                textStyle: const TextStyle(
                  fontSize: 20,
                ), // DIMENSIONE DEL TESTO
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ), // PADDING INTERNO AL BOTTONE
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ), // FORMA DEL BOTTONE (ROTONDITA' DEGLI ANGOLI)
              ),
            ), // BOTTONE CON BORDO
          ],
        ),
      ),
      //-----------------------------------------------------------------
      floatingActionButton: FloatingActionButton(
        // AGGIUNGE IL BOTTONE
        onPressed:
            _incrementCounter, // SE LO CLICCHI VA A _incrementCounter E INCREMENTA IL COUNTER
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

//---------------------------------------------------------------------------------------------------------------------------------------------------------
// CLASSE _PageLoginState CHE ESTENDE StatefulWidget (WIDGET CON STATO)
class _PageLoginState extends StatefulWidget {
  @override
  State<_PageLoginState> createState() => __PageLoginStateState();
}

//---------------------------------------------------------------------------------------------------------------------------------------------------------
// CLASSE __PageLoginStateState CHE ESTENDE State<_PageLoginState> (STATO DI _PageLoginState)
class __PageLoginStateState extends State<_PageLoginState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ), // BARRA PRINCIPALE PRESENTE IN ALTO
      body: Center(
        // PARTE CENTRALE DELLA NOSTRA APP
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              // CAMPO DI TESTO PER L'USERNAME
              decoration: const InputDecoration(
                border: OutlineInputBorder(), // BORDO DEL CAMPO DI TESTO
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              // CAMPO DI TESTO PER LA PASSWORD
              decoration: const InputDecoration(
                border: OutlineInputBorder(), // BORDO DEL CAMPO DI TESTO
                labelText: 'Password',
              ),
              obscureText: true, // NASCONDE IL TESTO INSERITO (PER LE PASSWORD)
            ),
            const SizedBox(height: 100), // SPAZIO DEL LOGIN
            ElevatedButton(
              onPressed: () {
                // AZIONE DA ESEGUIRE QUANDO SI PREME IL BOTTONE
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
