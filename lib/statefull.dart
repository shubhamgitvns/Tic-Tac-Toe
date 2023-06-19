import 'package:flutter/material.dart';

class IntroForm extends StatefulWidget {
  const IntroForm({super.key});

  @override
  State<IntroForm> createState() => _IntroFormState();
}

class _IntroFormState extends State<IntroForm> {
  //use this controller to get what the user get

  final _textcontroller = TextEditingController();
  final _secondcontroler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            //Text field icon
            child: Container(
              constraints: const BoxConstraints(
                maxHeight: 600,
                maxWidth: 600,
              ),
              child: TextField(
                controller: _textcontroller,
                decoration: InputDecoration(
                    hintText: "What's your mind",
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _textcontroller.clear(); // _text controller
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
              constraints: const BoxConstraints(
                maxWidth: 600,
                maxHeight: 600,
              ),
              child: TextField(
                controller: _secondcontroler,
                decoration: InputDecoration(
                    hintText: "What's your mind",
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _secondcontroler.clear(); // _text controller
                      },
                      //Cross Icon
                      icon: const Icon(Icons.clear),
                    )),
              ),
            ),
          ),
        ),

        Container(
          decoration: BoxDecoration(
              color: Colors.white, boxShadow: [
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

                },
                child: const Text(
                  "restart",
                )),
          ),
        )
      ],
    );
  }
}

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
  var text = "Winner";

  void restart() {
    setState(() {
      grid = ['-', '-', '-', '-', '-', '-', '-', '-', '-'];
    });
  }

  void cross(i) {
    setState(
      () {
        if (grid[i] == '-') {
          grid[i] = currentplayer;
          currentplayer = currentplayer == 'X' ? 'O' : 'X';
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
        restart();
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
                "$winner $text",
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
              color: Colors.blue[900],
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
                  color: Colors.white,
                  child: InkWell(
                    // if click the icon than work splash color like click button in the css
                    splashColor: Colors.teal,
                    onTap: () {
                      cross(index);
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
                    },
                    child: const Text(
                      "restart",
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
