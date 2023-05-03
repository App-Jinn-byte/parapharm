import 'package:flutter/material.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/res.dart';
import 'package:parapharm/widgets/common_widgets.dart';

import 'widget/widget.dart';

class OrderHistoryScreenView extends StatelessWidget {
  OrderHistoryScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CommonWidgets.customAppBar(
          title: "Order History",
          onTapLeadingIcon: () {
            Navigator.pop(context);
          }),
      body: SizedBox(
          width: sizes!.width,
          height: sizes!.height,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: sizes!.height * 0.04,
                  ),
                  OrderHistoryCard(),
                  OrderHistoryCard(),
                  OrderHistoryCard(),
                  OrderHistoryCard(),
                ],
              ),
            ),
          )),
    ));
  }
}
