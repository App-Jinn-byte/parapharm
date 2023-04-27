import 'package:flutter/material.dart';
import 'package:parapharm/widgets/common_widgets.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CommonWidgets.customAppBar(title: "Home")),
      ),
    );
  }
}
