import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Question extends StatelessWidget {
  final String? questiion;

  // ignore: use_key_in_widget_constructors
  const Question(this.questiion);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questiion.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          // height: 30,

        ),
      ),
    );
  }
}
