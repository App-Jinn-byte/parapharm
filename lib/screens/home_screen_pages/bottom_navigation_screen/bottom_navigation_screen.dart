import 'package:flutter/material.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/colors.dart';
import 'package:parapharm/res/res.dart';
import 'package:parapharm/screens/home_screen_pages/account_screen/view/account_screen_view.dart';
import 'package:parapharm/screens/home_screen_pages/blogs_screen/view/blogs_screen_view.dart';
import 'package:parapharm/screens/home_screen_pages/discounts_product_page/view/discounts_product_page_view.dart';
import 'package:parapharm/screens/home_screen_pages/home_screen/view/home_screen_view.dart';
import 'package:parapharm/screens/home_screen_pages/search_screen/view/search_screen_view.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Get the initial index from the route arguments, if any
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args != null && args is int) {
      _currentIndex = args;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: sizes!.heightRatio * 70,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedItemColor: AppColors.appTheme,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage(
                  Assets.homeIconUnselected,
                ),
                size: 24,
                color: AppColors.appTheme,
              ),
              activeIcon: const ImageIcon(
                AssetImage(Assets.homeIconSelected),
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(Assets.searchIconUnselected)),
                label: 'Search',
                activeIcon: ImageIcon(
                  AssetImage(Assets.searchIconSelected),
                )),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(Assets.blogIconUnSelected),
              ),
              label: 'Blogs',
              activeIcon: ImageIcon(AssetImage(Assets.blogIconSelected)),
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(Assets.discountIconUnselected)),
              label: 'Discount',
              activeIcon: ImageIcon(AssetImage(Assets.discountIconSelected)),
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(Assets.accountIconUnselected)),
              label: 'Account',
              activeIcon: ImageIcon(AssetImage(Assets.accountIconSelected)),
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreenView(),
          SearchScreenView(),
          BlogsScreenView(),
          DiscountsProductPageView(),
          AccountScreenView()
        ],
      ),
    );
  }
}
