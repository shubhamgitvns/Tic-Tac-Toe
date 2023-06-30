import 'dart:math';

import 'package:flutter/material.dart';

import 'Utilites.dart';
//*************** Human Mode State full widget*****************//

class MyFirstHomePage extends StatefulWidget {
  const MyFirstHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyFirstHomePage> createState() => _MyFirstHomePageState();
}

class _MyFirstHomePageState extends State<MyFirstHomePage> {
  var grid = ['-', '-', '-', '-', '-', '-', '-', '-', '-'];
  var winner = "";
  var currentplayer = 'X';
  var secondplayer = "O";
  Color currentplayercolorred = Colors.green;
  Color secondplayercolorred = Colors.red;
  Color red = Colors.red;
  Color green = Colors.green;
  var currentplayername = '';
  var secondplayername = '';
  var over = "Game Over";
  bool GameEnd = false;
  bool Gamedraw = false;
  bool showornot = true;
  bool play = false;
  int result = 0;

  void restart() {
    setState(() {
      play = false;
      Gamedraw = false;
      currentplayer = 'X';
      currentplayername = '';
      secondplayername = '';
      currentplayercolorred = currentplayercolorred == green ? red : green;
      secondplayercolorred = secondplayercolorred == red ? green : red;
      grid = ['-', '-', '-', '-', '-', '-', '-', '-', '-'];
    });
  }

  void cross(i) {
    setState(
          () {
        if (grid[i] == '-') {
          //if program is restart than var again call
          winner = "";
          GameEnd = false;
          grid[i] = currentplayer;
          currentplayer = currentplayer == 'X' ? 'O' : 'X';
          currentplayercolorred = currentplayercolorred == green ? red : green;
          secondplayercolorred = secondplayercolorred == red ? green : red;
          currentplayername = Utilities.firstcontroller.text;
          secondplayername = Utilities.secondcontroler.text;
        }
      },
    );

    result = checkAll();
  }

  int checkLine(int p1, int p2, int p3) {
    int xcount = 0, ocount = 0;

    if (grid[p1] == 'X') xcount++;
    if (grid[p2] == 'X') xcount++;
    if (grid[p3] == 'X') xcount++;
    if (grid[p1] == 'O') ocount++;
    if (grid[p2] == 'O') ocount++;
    if (grid[p3] == 'O') ocount++;
    if (xcount == 3) {
      GameEnd = true;
      showornot = false;
      winner = currentplayername;
      return 1;
    }
    if (ocount == 3) {
      GameEnd = true;
      showornot = false;
      winner = secondplayername;
      return 2;
    }
    if (xcount > 0 && ocount > 0) {
      return 3;
    }

    return 0;
  }

  int checkAll() {
    int blockcount = 0;
    int count = checkLine(0, 1, 2);
    if (count == 1) {
      return 1;
    }
    if (count == 2) {
      return 2;
    }
    if (count == 3) {
      blockcount++;
    }

    count = checkLine(3, 4, 5);
    if (count == 1) {
      return 1;
    }
    if (count == 2) {
      return 2;
    }
    if (count == 3) {
      blockcount++;
    }

    count = checkLine(6, 7, 8);
    if (count == 1) {
      return 1;
    }
    if (count == 2) {
      return 2;
    }
    if (count == 3) {
      blockcount++;
    }

    count = checkLine(0, 3, 6);
    if (count == 1) {
      return 1;
    }
    if (count == 2) {
      return 2;
    }
    if (count == 3) {
      blockcount++;
    }

    count = checkLine(1, 4, 7);
    if (count == 1) {
      return 1;
    }
    if (count == 2) {
      return 2;
    }
    if (count == 3) {
      blockcount++;
    }

    count = checkLine(2, 5, 8);
    if (count == 1) {
      return 1;
    }
    if (count == 2) {
      return 2;
    }
    if (count == 3) {
      blockcount++;
    }

    count = checkLine(0, 4, 8);
    if (count == 1) {
      return 1;
    }
    if (count == 2) {
      return 2;
    }
    if (count == 3) {
      blockcount++;
    }

    count = checkLine(2, 4, 6);
    if (count == 1) {
      return 1;
    }
    if (count == 2) {
      return 2;
    }
    if (count == 3) {
      blockcount++;
    }
    // block count==8 than program come in this condition
    // This condition show match draw message
    if (blockcount == 8) {
      Gamedraw = true;
      return 3;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tic Tac Toe ",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        shadowColor: Colors.tealAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (play && winner == "" && result == 0)
                    Text(
                      "Player X:- $currentplayername",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: currentplayercolorred,
                      ),
                    ),
                  if (play && winner == "" && result == 0)
                    Text(
                      "Player O:- $secondplayername",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: secondplayercolorred,
                      ),
                    ),
                ],
              ),
              if (GameEnd)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 500,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        "$winner Winner",
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              if (GameEnd)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      over,
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ),
                ),
              if (result == 3)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 500,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        "Game Draw",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              if (Gamedraw)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Play again",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
              Visibility(
                visible: showornot,
                child: Container(
                  constraints: const BoxConstraints(
                    maxHeight: 500,
                    maxWidth: 500,
                  ),
                  margin: const EdgeInsets.all(20),
                  color: Colors.lightBlue,
                  child: GridView.builder(
                    //if the background color using extra space than using shrinkwrap
                    // in this app using shrinkwrap in the black color
                    shrinkWrap: true,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: grid.length,
                    itemBuilder: (context, index) => Material(
                      //Create the background color in the grid
                      color: Colors.white,
                      child: InkWell(
                        // if click the icon than work splash color like click button in the css
                        splashColor: Colors.grey,
                        onTap: () {
                          play = true;
                          cross(index);
                          // checkLine(p1, p2, p3);
                        },
                        child: Center(
                            child: Text(
                              grid[index],
                              style: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal),
                            )),
                      ),
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
                        restart();
                        showornot = true;
                      },
                      child: const Text(
                        "Play Again",
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//*************** Computer Mode state full widget**************//
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var grid = ['-', '-', '-', '-', '-', '-', '-', '-', '-'];
  var winner = "";
  var currentplayer = 'X';
  var secondplayer = "O";
  var currentplayername = '';
  var over = "Game Over";
  bool GameEnd = false;
  bool Gamedraw = false;
  bool showornot = true;
  bool play = false;
  int result = 0;

  void restart() {
    setState(() {
      play = false;
      Gamedraw = false;
      currentplayer = 'X';
      currentplayername = '';
      grid = ['-', '-', '-', '-', '-', '-', '-', '-', '-'];
    });
  }

  void Computer_maker(i) {
    if (checkAll() != 0) {
      return;
    }
    if (result == 8) {
      Gamedraw = true;
    }

    setState(() {
      currentplayer = "X";
      int num = Random().nextInt(8);
      while (isOccupied(num)) {
        num = Random().nextInt(8);
      }
      if (grid[num] == "-") {
        print("Valid");
        print(num);
        grid[num] = secondplayer;
        checkAll();
        return;
      }
    });
  }

  bool isOccupied(int pos) {
    if (grid[pos] != '-') return true;
    return false;
  }

  void cross(i) {
    setState(
          () {
        if (grid[i] == '-') {
          //if program is restart than var again call
          winner = "";
          GameEnd = false;
          grid[i] = currentplayer;
          currentplayer = currentplayer == 'X' ? 'O' : 'X';
          currentplayername = Utilities.firstcontroller.text;
        }
      },
    );

    result = checkAll();
  }

  int checkLine(int p1, int p2, int p3) {
    int xcount = 0, ocount = 0;
    if (grid[p1] == 'X') xcount++;
    if (grid[p2] == 'X') xcount++;
    if (grid[p3] == 'X') xcount++;
    if (grid[p1] == 'O') ocount++;
    if (grid[p2] == 'O') ocount++;
    if (grid[p3] == 'O') ocount++;
    if (xcount == 3) {
      GameEnd = true;
      showornot = false;
      winner = currentplayername;
      return 1;
    }
    if (ocount == 3) {
      GameEnd = true;
      showornot = false;
      winner = "Computer";
      return 2;
    }
    if (xcount > 0 && ocount > 0) {
      return 3;
    }
    return 0;
  }

  int checkAll() {
    int blockcount = 0;
    int count = checkLine(0, 1, 2);
    if (count == 1) {
      return 1;
    }
    if (count == 2) {
      return 2;
    }
    if (count == 3) {
      blockcount++;
    }

    count = checkLine(3, 4, 5);
    if (count == 1) {
      return 1;
    }
    if (count == 2) {
      return 2;
    }
    if (count == 3) {
      blockcount++;
    }

    count = checkLine(6, 7, 8);
    if (count == 1) {
      return 1;
    }
    if (count == 2) {
      return 2;
    }
    if (count == 3) {
      blockcount++;
    }

    count = checkLine(0, 3, 6);
    if (count == 1) {
      return 1;
    }
    if (count == 2) {
      return 2;
    }
    if (count == 3) {
      blockcount++;
    }

    count = checkLine(1, 4, 7);
    if (count == 1) {
      return 1;
    }
    if (count == 2) {
      return 2;
    }
    if (count == 3) {
      blockcount++;
    }

    count = checkLine(2, 5, 8);
    if (count == 1) {
      return 1;
    }
    if (count == 2) {
      return 2;
    }
    if (count == 3) {
      blockcount++;
    }

    count = checkLine(0, 4, 8);
    if (count == 1) {
      return 1;
    }
    if (count == 2) {
      return 2;
    }
    if (count == 3) {
      blockcount++;
    }

    count = checkLine(2, 4, 6);
    if (count == 1) {
      return 1;
    }
    if (count == 2) {
      return 2;
    }
    if (count == 3) {
      blockcount++;
    }
    // block count==8 than program come in this condition
    // This condition show match draw message
    if (blockcount == 8) {
      Gamedraw = true;
      return 3;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tic Tac Toe ",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        shadowColor: Colors.tealAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              if (GameEnd)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 500,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        "$winner Winner",
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              if (GameEnd)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      over,
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ),
                ),
              if (result == 3)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 500,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        "Game Draw",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              if (Gamedraw)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Play again",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
              Visibility(
                visible: showornot,
                child: Container(
                  constraints: const BoxConstraints(
                    maxHeight: 500,
                    maxWidth: 500,
                  ),
                  margin: const EdgeInsets.all(20),
                  color: Colors.lightBlue,
                  child: GridView.builder(
                    //if the background color using extra space than using shrinkwrap
                    // in this app using shrinkwrap in the black color
                    shrinkWrap: true,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: grid.length,
                    itemBuilder: (context, index) => Material(
                      //Create the background color in the grid
                      color: Colors.white,
                      child: InkWell(
                        // if click the icon than work splash color like click button in the css
                        splashColor: Colors.grey,
                        onTap: () {
                          play = true;
                          cross(index);
                          if (currentplayer == "O") {
                            setState(() {
                              Computer_maker(index);
                            });
                          }
                          // // checkLine(p1, p2, p3);
                        },
                        child: Center(
                            child: Text(
                              grid[index],
                              style: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal),
                            )),
                      ),
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
                        restart();
                        showornot = true;
                      },
                      child: const Text(
                        "Play Again",
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}