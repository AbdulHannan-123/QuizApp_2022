import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final VoidCallback? onpressed;

  Result(this._totalScore, this.onpressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              "Your TotalScore is ${_totalScore}",
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
            FloatingActionButton(
              onPressed: onpressed,
              // ignore: prefer_const_constructors
              child: Icon(Icons.restart_alt,color: Colors.amber,)
              )
          ],
        ),
      ),
    );
  }
}
