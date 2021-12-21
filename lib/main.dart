import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: HomePage(),));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var height = 200.0;
  var width = 200.0;
  var color = Colors.yellow;

  animatedContainer(){
    setState(() {
      color = color == Colors.yellow ? Colors.blue : Colors.yellow;
      height = height == 200 ? 400 : 200;
      width = width == 200 ? 400 : 200;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              curve: Curves.bounceOut,
              transform:Matrix4.translationValues(0, 0, 0),
              height: height,
              width: width,
              color: color,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  animatedContainer();
                });
            }, child: const Text('Press Me !'),
            )
          ],
        ),
      ),
    );
  }
}
