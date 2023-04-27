import 'package:flutter/material.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/colors.dart';
import 'package:parapharm/screens/home_screen_pages/home_screen/view/home_screen_view.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreenView(),
    Container(
      child: Text("dcsdcsdc"),
    ),
    Container(
      child: Text("dcsdcsdc"),
    ),
    Container(
      child: Text("dcsdcsdc"),
    ),
    Container(
      child: Text("dcsdcsdc"),
    ),

    // SearchScreen(),
    // DiscountScreen(),
    // BlogsScreen(),
    // AmountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        // selectedLabelStyle: TextStyle(
        //   color: AppColors.appTheme,
        // ),
        // unselectedLabelStyle: TextStyle(
        //   color: Colors.red,
        // ),
        selectedItemColor: AppColors.appTheme,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                Assets.homeIconSelected,
              ),
              size: 24,
              color: AppColors.appTheme,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.searchIconUnselected)),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.blogIconUnselected)),
            label: 'Blogs',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.discountIconUnselected)),
            label: 'Discount',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.accountIconUnselected)),
            label: 'Account',
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
    );
  }
}
