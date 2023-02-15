import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('ask me anything'),
          backgroundColor: Colors.cyan,
        ),
        body: ball(),
      ),
    ),
  );
}
class ball extends StatefulWidget {
  const ball({Key? key}) : super(key: key);

  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {
int all=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    all=Random().nextInt(5)+1;
                  });
                }, child: Image.asset('images/ball$all.png'),
              ),
            

          ),
          
        ],
      ),
    );
  }
}
