import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text('Tasbeeh Counter App')),
              backgroundColor: Colors.black,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 681,
                  width: 393,
                  decoration:const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1635016288720-c52507b9a717?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fGlzbGFtaWMlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60'),
                          fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        '3rd Kalimah ',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'سُبْحَان اللهِ وَالْحَمْدُلِلّهِ وَلا إِلهَ إِلّااللّهُ وَاللّهُ أكْبَرُ وَ حَوْلَ وَلاَ قُوَّةَ إِلَّا بِاللّهِ الْعَلِيِّ الْعَظِيْم',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        x.toString(),
                        style:const TextStyle(color: Colors.white, fontSize: 35),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            floatingActionButton: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75),
              child: Wrap( //will break to another line on overflow
                direction: Axis.horizontal, //use vertical to show  on vertical axis
                children: <Widget>[
                  Container(
                      margin:const EdgeInsets.all(10),
                      child: FloatingActionButton(
                        onPressed: (){
                          x=0;
                          setState(() {
                          });
                          print(x.toString());

                        },
                        backgroundColor: Colors.red,
                        child:const Icon(Icons.restart_alt),
                      )
                  ),
                  const SizedBox(width: 50,),//button first

                  Container(
                      margin: const EdgeInsets.all(10),
                      child: FloatingActionButton(
                        onPressed: (){
                          x++;
                          setState(() {
                          });
                           print(x.toString());
                        },
                        backgroundColor: Colors.green,
                        child: const Icon(Icons.add),
                      )
                  ), // button second

                  // Add more buttons here
                ],
              ),
            ),),
        ),
      );
  }
}
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Icon(Icons.refresh,color: Colors.white,size: 50,),
// SizedBox(width: 20,),
// Icon(Icons.add_circle_outline_sharp,color: Colors.white,
// size: 50,),
// ],
// )
