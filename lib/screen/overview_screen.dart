import 'package:day_5_in_100_days_of_flutter/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'add_screen.dart';
import 'notification_screen.dart';
import 'profile_screen.dart';
import 'search_screen.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  int _currentPage = 0;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF41B76D),
        onPressed: () {
          setState(() {
            currentScreen = const AddScreen();
            _currentPage = 4;
          });
        },
        child: const Icon(
          Icons.add_circle_outlined,
          size: 30,
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFF0D111A),
        notchMargin: 10,
        shape: const CircularNotchedRectangle(),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = const HomeScreen();
                      _currentPage = 0;
                    });
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.house,
                    color: _currentPage == 0 ? const Color(0xFF41B76D) : Colors.grey,
                  )),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentScreen = const SearchScreen();
                    _currentPage = 1;
                  });
                },
                icon: FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: _currentPage == 1 ? const Color(0xFF41B76D) : Colors.grey,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = const NotificationScreen();
                      _currentPage = 2;
                    });
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.bell,
                    color: _currentPage == 2 ? const Color(0xFF41B76D) : Colors.grey,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = const ProfileScreen();
                      _currentPage = 3;
                    });
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.user,
                    color: _currentPage == 3 ? const Color(0xFF41B76D) : Colors.grey,
                  )),
            ],
          ),
        ),
      ),
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
    );
  }
}
