import 'package:flutter/material.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Analytics%20View/Analytics%20View.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Contacts%20View/Contacts%20View.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Home%20View/Home%20View.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Settings%20View/Settings%20View.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Share%20View/Share%20View.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  late PersistentTabController _controller;

  List<Widget> _buildScreens() {
    return const [
      HomeView(),
      ContactsView(),
      ShareView(),
      AnalyticsView(),
      SettingsView()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
        icon: SizedBox(
          height: 30,
          width: 30,
          child: Image.asset('assets/images/profiles.png' , fit: BoxFit.fill,),
        ),
        inactiveIcon: SizedBox(
          height: 30,
          width: 30,
          child: Image.asset('assets/images/profile grey.png'),
        ),
        title: ("Profiles"),




      ),
      PersistentBottomNavBarItem(
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,

        icon: SizedBox(
          height: 30,
          width: 30,
          child: Image.asset('assets/images/contacts.png'),
        ),
        inactiveIcon: SizedBox(
          height: 30,
          width: 30,
          child: Image.asset('assets/images/contacts grey.png'),
        ),
        title: ("Contacts"),


      ),
      PersistentBottomNavBarItem(
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
        icon: SizedBox(
          height: 30,
          width: 30,
          child: Image.asset('assets/images/qr-code.png'),
        ),
        inactiveIcon: SizedBox(
          height: 30,
          width: 30,
          child: Image.asset('assets/images/qr-code grey.png'),
        ),
        title: ("Profiles"),


      ),
      PersistentBottomNavBarItem(
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
        icon: SizedBox(
          height: 30,
          width: 30,
          child: Image.asset('assets/images/analytics.png' , fit: BoxFit.fill,),
        ),
        inactiveIcon: SizedBox(
          height: 30,
          width: 30,
          child: Image.asset('assets/images/analytics grey.png'),
        ),
        title: ("Analytics"),




      ),
      PersistentBottomNavBarItem(
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
        icon: SizedBox(
          height: 30,
          width: 30,
          child: Image.asset('assets/images/setting.png' , fit: BoxFit.fill,),
        ),
        inactiveIcon: SizedBox(
          height: 30,
          width: 30,
          child: Image.asset('assets/images/setting grey.png'),
        ),
        title: ("Setting"),




      ),

    ];
  }

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      bottomNavigationBar: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarStyle:  NavBarStyle.style6,
        padding:  const EdgeInsets.all(12.0),
        navBarHeight: height*.09,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),)


    );
  }
}
