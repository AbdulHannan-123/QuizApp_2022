import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {

   final VoidCallback? onPressed; 
   final String? text;

   Answer(this.onPressed, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:
      ElevatedButton(
        onPressed: onPressed,
         child: 
         Text("${text}")),
    );
  }
}