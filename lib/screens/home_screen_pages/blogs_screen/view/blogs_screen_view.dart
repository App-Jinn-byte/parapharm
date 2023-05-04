import 'package:flutter/material.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/res.dart';
import 'package:parapharm/screens/custom_drawer/custom_drawer.dart';
import 'package:parapharm/widgets/common_widgets.dart';
import 'package:parapharm/widgets/custom_tab_view_widget/custom_tab_view.dart';

class BlogsScreenView extends StatelessWidget {
  BlogsScreenView({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: const CustomDrawer(),
        appBar: CommonWidgets.customAppBar(
            title: "Blogs",
            leadingIcon: Assets.hamburgerIcon,
            onTapLeadingIcon: () {
              _scaffoldKey.currentState?.openDrawer();
            }),
        body: SizedBox(
            width: sizes!.width,
            height: sizes!.height,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: sizes!.height * 0.03,
                    ),
                    CommonWidgets.customSearchTextField(),
                    SizedBox(
                      height: sizes!.height * 0.03,
                    ),
                    Container(height: 585, child: CustomTabView())
                  ],
                ),
              ),
            )),
      ),
    ));
  }
}
