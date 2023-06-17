import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var grid = ['-', '-', '-', '-', '-', '-', '-', '-', '-'];
  var winner = "";
  var cuurenplayer = 'X';
  void cross(i) {
    setState(
      () {
        if (grid[i] == '-') {
          grid[i] = cuurenplayer;
          cuurenplayer = cuurenplayer == 'X' ? 'O' : 'X';
        }
      },
    );
    FindWinner(grid[i]);
  }

  bool check(i1, i2, i3, sign) {
    if (grid[i1] == sign && grid[i2] == sign && grid[i3] == sign) {
      return true;
    }
    return false;
  }

  void FindWinner(currentsign) {
    if (check(0, 1, 2, currentsign) ||
        check(3, 4, 5, currentsign) ||
        check(6, 7, 8, currentsign) || //row
        check(0, 3, 6, currentsign) ||
        check(1, 4, 7, currentsign) ||
        check(2, 5, 8, currentsign) || //column
        check(0, 4, 8, currentsign) ||
        check(2, 4, 6, currentsign)) {
      setState(() {
        winner = currentsign;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tic Tac Toe "),
        centerTitle: true,
        shadowColor: Colors.tealAccent,
      ),
      body: Center(
        child: Column(
          children: [
            if (winner != "")
              Text(
                "$winner won the game",
                style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            Container(
              constraints: const BoxConstraints(
                maxHeight: 400,
                maxWidth: 400,
              ),
              margin: const EdgeInsets.all(20),
              color: Colors.black,
              child: GridView.builder(
                //if the background color using extra space than using shrinkwrap
                // in this app using shrinkwrap in the black color
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: grid.length,
                itemBuilder: (context, index) => Material(
                  //Create the background color in the grid
                  color: Colors.blueAccent,
                  child: InkWell(
                    // if click the icon than work splash color like click button in the css
                    splashColor: Colors.teal,
                    onTap: () {
                      cross(index);
                    },
                    child: Center(
                        child: Text(
                      grid[index],
                      style: const TextStyle(fontSize: 50),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
