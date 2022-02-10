import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_foot_delivery/gen/asset_gen.dart';

import 'CategoriesPage.dart';
import 'CategoryDetailPage.dart';
import 'CheckoutPage.dart';

class BottomNavPage extends StatefulWidget {
  @override
  BottomNavPageState createState() => BottomNavPageState();
}

class BottomNavPageState extends State<BottomNavPage> {
  int _currentTab = 0;
  PageController _pageController = PageController(initialPage: 0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          CategoriesPage(),
          CheckoutPage(),
          CategoryDetailPage()
        ],
        onPageChanged: (index) {
          setState(() {
            _currentTab = index;
          });
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: Container(
          child: Row(
            // tự động chia màn hình ra thành các phần bằng nhau cho các phần tử con bên trong
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: _currentTab == 0
                    ? Image.asset(Assets.category.grid.path)
                    : Image.asset(Assets.category.grid2.path),
                onTap: () {
                  setState(() {
                    _currentTab = 0;
                    _pageController.jumpToPage(0);
                  });
                },
              ),
              InkWell(
                child: _currentTab == 1
                    ? Image.asset(Assets.category.grid.path)
                    : Image.asset(Assets.category.grid2.path),
                onTap: () {
                  setState(() {
                    _currentTab = 1;
                    _pageController.jumpToPage(1);
                  });
                },
              ),
              InkWell(
                child: _currentTab == 2
                    ? Image.asset(Assets.category.grid.path)
                    : Image.asset(Assets.category.grid2.path),
                onTap: () {
                  setState(() {
                    _currentTab = 2;
                    _pageController.jumpToPage(2);
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
