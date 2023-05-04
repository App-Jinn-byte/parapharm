import 'package:flutter/material.dart';
import 'package:parapharm/res/res.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizes!.height*0.3,
      width: sizes!.width*0.3,
    );
  }
}
