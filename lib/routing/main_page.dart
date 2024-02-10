import 'package:flutter/material.dart';
import 'package:reface/features/excercises_list/screen/excercises_list_screen.dart';
import 'package:reface/features/home/home.dart';
import 'package:reface/features/profile/screen/profile_screen.dart';
import 'package:reface/shared/shared.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    ExcercisesListScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    Dimensions(context); //initializing context
    return Scaffold(
      backgroundColor: AppColors.dirtyWhite,
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            //if the index is 0, the color of the icon is primary, else it is black
            icon: Icon(
              Icons.home,
              color: _currentIndex == 0
                  ? AppColors.primary
                  : AppColors.mainTextBlack,
            ),
            label: 'Home',
          ),
          //TODO : change the "Play" button style cuz it's looking disgusting right now
          BottomNavigationBarItem(
              icon: Container(
                  height: Dimensions.screenHeight! * 5,
                  width: Dimensions.screenHeight! * 5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == 1
                        ? AppColors.primary
                        : AppColors.mainTextBlack,
                  ),
                  child: Icon(
                    _currentIndex == 1
                        ? Icons.play_arrow
                        : Icons.play_arrow_outlined,
                    size: Dimensions.screenHeight! * 4,
                    color: AppColors.dirtyWhite,
                  )),
              label: 'Play'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _currentIndex == 2
                  ? AppColors.primary
                  : AppColors.mainTextBlack,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
