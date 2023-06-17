import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var grid = ['-', '-', '-', '-', '-', '-', '-', '-', '-'];

  var cuurenplayer = 'x';
  void cross(i) {
    setState(
      () {
        if (grid[i] == '-') {
          grid[i] = cuurenplayer;
          cuurenplayer = cuurenplayer == 'x' ? 'o' : 'x';
        }
        if(cuurenplayer == grid[3]){
          print("hii");

        }
      },
    );
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
            Container(
              constraints: const BoxConstraints(
                maxHeight: 500,
                maxWidth: 500,
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
