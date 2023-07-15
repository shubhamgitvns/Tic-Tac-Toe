import 'package:flutter/material.dart';

import 'Stateful.dart';
import 'Utilites.dart';

//********** Welcome Page************************************
class WelcomPage extends StatelessWidget {
  const WelcomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF09203e),
                Color(0xFF537895),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Tic Tac Toe',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'With Computer',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 32),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(75),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 10,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                          color: Colors.transparent,
                          offset: Offset(-2.0, -2.0),
                          blurRadius: 10,
                          spreadRadius: 1.0,
                        ),
                      ]),
                  child: Center(
                      child: SizedBox(
                          height: 100,
                          child: Image.network(
                              'https://cdn.pixabay.com/photo/2013/07/12/15/56/tic-tac-toe-150614_1280.png'))),
                ),
                const SizedBox(height: 32),
                const Text(
                  'Get ready to play!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Challenge your opponent and be the champion.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 32),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.lightBlueAccent, width: 1),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.lightBlueAccent,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 10,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                          color: Colors.lightBlueAccent,
                          offset: Offset(-2.0, -2.0),
                          blurRadius: 10,
                          spreadRadius: 1.0,
                        ),
                      ]),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the game screen
                      Navigator.pushNamed(context, '/optionalpage');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amberAccent,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Start Game',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                          // color: Color(0xFF09203f),
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//****************Optional page**********************************

class OptionalPage extends StatelessWidget {
  const OptionalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF09203e),
                Color(0xFF537895),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 29),
                const Text(
                  'Choose One Option',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 29),
                //const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.lightBlueAccent,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                              BoxShadow(
                                color: Colors.lightBlueAccent,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                            ]),
                        child: Center(
                            child: SizedBox(
                                height: 100,
                                child: Image.network(
                                    'https://media.istockphoto.com/id/1097309742/vector/versus-screen-vs-battle-headline-conflict-duel-between-teams-confrontation-fight-competition.jpg?s=612x612&w=0&k=20&c=ZWrDXhVdD7TbqE_kzUVispiX5eN6tHDg0DvmVSUv8mg='))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.lightBlueAccent,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                              BoxShadow(
                                color: Colors.lightBlueAccent,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                            ]),
                        child: Center(
                            child: SizedBox(
                                height: 100,
                                child: Image.network(
                                    'https://media.istockphoto.com/id/937014004/vector/video-game-controller-icon-flat.jpg?s=612x612&w=0&k=20&c=Nxvg6dESxXCPIf29MlN8mwervkn7G2JwMbeTHP6RGAc='))),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/humanmode');
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.amberAccent,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Human Mode',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white
                                // color: Color(0xFF09203f),
                                ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to the game screen
                          Navigator.pushNamed(context, '/computermode');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amberAccent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Computer mode',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 32),
                const Text(
                  'Get ready to play!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//*************Human player name Intro Page*******************************//
class PlayersIntroPage extends StatelessWidget {
  PlayersIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tic Tac Toe",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Welcome"),
            centerTitle: true,
            backgroundColor: Colors.amber,
            shadowColor: Colors.lightBlueAccent,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "Welcome The Tic Tac Toe Game",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  //Text field icon
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.blueAccent, width: 2),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 5,
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(-2.0, -2.0),
                            blurRadius: 5,
                          )
                        ]),
                    constraints: const BoxConstraints(
                      maxHeight: 600,
                      maxWidth: 600,
                    ),
                    child: TextField(
                      onChanged: (String a) {
                        a = Utilities.firstcontroller.text;
                        print(a);
                      },
                      controller: Utilities.firstcontroller,
                      decoration: InputDecoration(
                          hintText: "Enter first player name",
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: IconButton(
                            onPressed: () {
                              Utilities.firstcontroller
                                  .clear(); // _text controller
                            },
                            //Cross Icon
                            icon: const Icon(Icons.clear),
                          )),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),

                  //Text field icon
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.blueAccent, width: 2),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 5,
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(-2.0, -2.0),
                            blurRadius: 5,
                          )
                        ]),
                    constraints: const BoxConstraints(
                      maxWidth: 600,
                      maxHeight: 600,
                    ),
                    child: TextField(
                      controller: Utilities.secondcontroler,
                      onChanged: (String b) {
                        b = Utilities.secondcontroler.text;
                        print(b);
                      },
                      decoration: InputDecoration(
                          hintText: "Enter second player name",
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              Utilities.secondcontroler
                                  .clear(); // _text controller
                            },
                            //Cross Icon
                            icon: const Icon(Icons.clear),
                          )),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(2.0, 2.0),
                    blurRadius: 10,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(-2.0, -2.0),
                    blurRadius: 10,
                    spreadRadius: 1.0,
                  )
                ]),
                child: SizedBox(
                  height: 50,
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () {
                        //startTimer();
                        print("play");
                        Navigator.pushNamed(context, '/humanmodeplay');
                      },
                      child: const Text(
                        "Play",
                      )),
                ),
              )
            ],
          )),
    );
  }
}

//*************Computer player name Intro page
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tic Tac Toe",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Welcome"),
            centerTitle: true,
            backgroundColor: Colors.amber,
            shadowColor: Colors.lightBlueAccent,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "Welcome The Tic Tac Toe Game",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  //Text field icon
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.blueAccent, width: 2),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 5,
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(-2.0, -2.0),
                            blurRadius: 5,
                          )
                        ]),
                    constraints: const BoxConstraints(
                      maxHeight: 600,
                      maxWidth: 600,
                    ),
                    child: TextField(
                      onChanged: (String a) {
                        a = Utilities.firstcontroller.text;
                        print(a);
                      },
                      controller: Utilities.firstcontroller,
                      decoration: InputDecoration(
                          hintText: "Enter first player name",
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: IconButton(
                            onPressed: () {
                              Utilities.firstcontroller
                                  .clear(); // _text controller
                            },
                            //Cross Icon
                            icon: const Icon(Icons.clear),
                          )),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(2.0, 2.0),
                    blurRadius: 10,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(-2.0, -2.0),
                    blurRadius: 10,
                    spreadRadius: 1.0,
                  )
                ]),
                child: SizedBox(
                  height: 50,
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () {
                        print("play");
                        Navigator.pushNamed(context, '/Choose_tern');
                      },
                      child: const Text(
                        "Play",
                      )),
                ),
              )
            ],
          )),
    );
  }
}

//************* Choose tern ************************************//
class ChooseTern extends StatelessWidget {
  const ChooseTern({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF09203e),
                Color(0xFF537895),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 29),
                const Text(
                  'Choose The First Tern',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 29),
                const Text(
                  'Whos Will Take First Step ',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.lightBlueAccent, width: 1),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.lightBlueAccent,
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 10,
                                  spreadRadius: 1.0,
                                ),
                                BoxShadow(
                                  color: Colors.lightBlueAccent,
                                  offset: Offset(-2.0, -2.0),
                                  blurRadius: 10,
                                  spreadRadius: 1.0,
                                ),
                              ]),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Human_Tern_Play');
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.amberAccent,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'Player',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                  // color: Color(0xFF09203f),
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.lightBlueAccent, width: 1),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.lightBlueAccent,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                              BoxShadow(
                                color: Colors.lightBlueAccent,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                            ]),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigate to the game screen
                            Navigator.pushNamed(context, '/Computer_Tern_Play');
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.amberAccent,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Computer',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 32),
                const Text(
                  'Get ready to play!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Toc Toe',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyFirstHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
