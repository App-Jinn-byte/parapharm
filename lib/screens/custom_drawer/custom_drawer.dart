import 'package:flutter/material.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/colors.dart';
import 'package:parapharm/res/res.dart';
import 'package:parapharm/res/utils.dart';
import 'package:parapharm/screens/custom_drawer/custom_drawer_components.dart';
import 'package:parapharm/screens/custom_drawer/custom_drawer_provider.dart';
import 'package:parapharm/screens/order_history_screen/view/order_history_screen_view.dart';
import 'package:parapharm/screens/wish_list_screen/view/wishlist_screen_view.dart';
import 'package:parapharm/widgets/common_widgets.dart';
import 'package:provider/provider.dart';

import '../../res/toasts.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  CustomDrawerComponents customDrawerComponents = CustomDrawerComponents();
  CustomDrawerProvider customDrawerProvider = CustomDrawerProvider();
  // String firstName="";
  // String middleName="";
  // String lastName="";
  // String fullUserName="";
  // int index = 1;
  String? delUserID;

  @override
  void initState() {
    customDrawerProvider =
        Provider.of<CustomDrawerProvider>(context, listen: false);
    customDrawerProvider.init(context: context);
    delUserID = PreferenceUtils.getUserId();
    super.initState();
    // firstName=PreferenceUtils.getString(Strings.firstNameKey)??"";
    // middleName=PreferenceUtils.getString(Strings.middleNameKey)??"";
    // lastName=PreferenceUtils.getString(Strings.lastNameKey)??"";
    // fullUserName = '$firstName $middleName $lastName';
    // debugPrint('fullUserName $firstName $middleName $lastName');
    // // setState(() {
    // //
    // // });
    // // if(mounted)
    // //   {
    //     setState(() {
    //
    //     });
    //   // }
  }

  // @override
  // void dispose() {
  //   customDrawerProvider.dispose();
  //   // print("dispose called");
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    Provider.of<CustomDrawerProvider>(context, listen: true);
    return Drawer(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customDrawerComponents.drawerHeader(
              context: context,
              userName: customDrawerProvider.fullUserName.toString(),
              onEdit: () {
                updateIndex(customDrawerProvider.index);
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (_) => const EditProfileScreen()));
              }),
          SizedBox(
            height: getHeightRatio() * 15,
          ),
          customDrawerComponents.menuItem(
              title: 'My profile',
              selected: customDrawerProvider.index == 0,
              onPress: () {
                updateIndex(0);
                // Navigator.pushReplacement(
                //     context, MaterialPageRoute(builder: (_) => const StatusScreen()));
              }),
          customDrawerComponents.menuItem(
              title: 'My shipping Address',
              selected: customDrawerProvider.index == 1,
              onPress: () {
                updateIndex(1);
                // Navigator.pushReplacement(
                //     context, MaterialPageRoute(builder: (_) => const JobScreen()));
              }),
          customDrawerComponents.menuItem(
              title: 'My orders',
              selected: customDrawerProvider.index == 2,
              onPress: () {
                updateIndex(2);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => OrderHistoryScreenView()));
              }),
          customDrawerComponents.menuItem(
              title: 'My wishlist',
              selected: customDrawerProvider.index == 3,
              onPress: () {
                updateIndex(3);
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => WishListScreenView()));
              }),
          customDrawerComponents.menuItem(
              title: 'My Bookmarks',
              selected: customDrawerProvider.index == 4,
              onPress: () {
                updateIndex(4);
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (_) => const Help()));
              }),
          const Spacer(),

          Padding(
            padding: EdgeInsets.only(
                left: sizes!.widthRatio * 15, bottom: sizes!.heightRatio * 15),
            child: CommonWidgets.mainButton("Logout",
                height: sizes!.heightRatio * 32,
                width: sizes!.widthRatio * 73,
                color: AppColors.logoutRedButtonColor,
                onPress: () {}),
          )
          // customDrawerComponents.menuItem(
          //     title: 'Delete Account',
          //     selected: false,
          //     onPress: () {
          //       showDialog(
          //           context: context,
          //           builder: (context) => AlertDialog(
          //                 title: const Text('Are You Sure?'),
          //                 content: const Text('Do You want to delete account?'),
          //                 actions: [
          //                   TextButton(
          //                       onPressed: () {
          //                         deleteAccount(userId: delUserID);
          //                       },
          //                       child: const Text('Yes')),
          //                   TextButton(
          //                       onPressed: () {
          //                         Navigator.pop(context);
          //                       },
          //                       child: const Text('No'))
          //                 ],
          //               ));
          //
          //       // updateIndex(1);
          //     }),
          // customDrawerComponents.menuItem(
          //     title: 'Logout',
          //     selected: false,
          //     onPress: () {
          //       showDialog(
          //           context: context,
          //           builder: (context) => AlertDialog(
          //                 title: const Text('Are You Sure?'),
          //                 content: const Text('Do You want to exit from APP?'),
          //                 actions: [
          //                   TextButton(
          //                       onPressed: () async {
          //                         PreferenceUtils.clearPreferences();
          //                         // Navigator.pushAndRemoveUntil(context,
          //                         //     MaterialPageRoute(builder: (_) => const LoginScreen()), (route) => false);
          //                         updateIndex(1);
          //                       },
          //                       child: const Text('Yes')),
          //                   TextButton(
          //                       onPressed: () {
          //                         Navigator.pop(context);
          //                       },
          //                       child: const Text('No'))
          //                 ],
          //               ));
          //     }),
        ],
      ),
    );
  }

  updateIndex(int value) {
    setState(() {
      customDrawerProvider.index = value;
    });
  }

  Future<void> deleteAccount({required dynamic userId}) async {
    // await customDrawerProvider.deleteAccountById(userId: userId);
    if (customDrawerProvider.isDeleted == true) {
      Toasts.getSuccessToast(text: "Account Successfully Deleted");
      // Navigator.pushAndRemoveUntil(context,
      //     MaterialPageRoute(builder: (_) => const LoginScreen()), (route) => false);
    } else {
      Toasts.getErrorToast(text: 'Something went Wrong');
    }
  }
}
