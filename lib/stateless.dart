import 'package:flutter/material.dart';

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
                const SizedBox(height: 29),
                const Text(
                  'Choose One Option',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 29),
                const Text(
                  'Choose one option',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue,
                    letterSpacing: 1.5,
                  ),
                ),
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
                        ),
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
                        ),
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

                           },
                           style: ElevatedButton.styleFrom(
                             primary: Colors.amberAccent,
                             padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(30),
                             ),
                           ),
                           child: const Text(
                             'Human Mode',
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
                     Center(
                       child: ElevatedButton(
                         onPressed: () {
                           // Navigate to the game screen

                         },
                         style: ElevatedButton.styleFrom(
                           primary: Colors.amberAccent,
                           padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30),
                           ),
                         ),
                         child: const Text(
                           'Computer mode',
                           style: TextStyle(
                               fontSize: 24,
                               fontWeight: FontWeight.bold,
                               color: Colors.white

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
