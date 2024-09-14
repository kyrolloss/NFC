import 'package:flutter/material.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Analytics%20View/Analytics%20View.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Contacts%20View/Contacts%20View.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Home%20View/Home%20View.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Settings%20View/Settings%20View.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Share%20View/Share%20View.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final List<Widget> _buildScreens = const [
    HomeView(),
    ContactsView(),
    ShareView(),
    AnalyticsView(),
    SettingsView()
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: _buildScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(

        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black26,
        selectedLabelStyle: TextStyle(
          color: Colors.black,
          fontSize: width * .035,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.black,
          fontSize: width * .035,
          fontWeight: FontWeight.w400,
        ),
        fixedColor: Colors.black,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: _selectedIndex == 0
                ? Image.asset('assets/images/profiles.png',
                    width: 24, height: 24)
                : Image.asset('assets/images/profile grey.png',
                    width: 24, height: 24),
            label: 'Profiles',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: _selectedIndex == 1
                ? Image.asset('assets/images/contacts.png',
                    width: 24, height: 24)
                : Image.asset('assets/images/contacts grey.png',
                    width: 24, height: 24),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: _selectedIndex == 2
                ? Image.asset('assets/images/qr-code.png',
                    width: 24, height: 24)
                : Image.asset('assets/images/qr-code grey.png',
                    width: 24, height: 24),
            label: 'Share',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: _selectedIndex == 3
                ? Image.asset('assets/images/analytics.png',
                    width: 24, height: 24)
                : Image.asset('assets/images/analytics grey.png',
                    width: 24, height: 24),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: _selectedIndex == 4
                ? Image.asset('assets/images/setting.png',
                    width: 24, height: 24)
                : Image.asset('assets/images/setting grey.png',
                    width: 24, height: 24),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
