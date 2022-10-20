import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tooba/elements/colors.dart';
import 'package:tooba/elements/utils.dart';
import 'package:tooba/models/route_argument.dart';
import 'package:tooba/screens/chat/chat_list.dart';
import 'package:tooba/screens/home/home_page.dart';
import 'package:tooba/screens/orders/orders.dart';
import 'package:tooba/screens/profile/profile.dart';

// ignore: must_be_immutable
class PagesTestWidget extends StatefulWidget {
  dynamic currentTab;
  dynamic currentBackPressTime = DateTime(2022);
  dynamic routeArgument;
  Widget currentPage = const HomePage();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  PagesTestWidget({
    Key? key,
    this.currentTab,
  }) : super(key: key) {
    if (currentTab != null) {
      if (currentTab is RouteArgument) {
        routeArgument = currentTab;
        currentTab = int.parse(currentTab.id);
      }
    } else {
      currentTab = 0;
    }
  }
  @override
  _PagesTestWidgetState createState() => _PagesTestWidgetState();
}

class _PagesTestWidgetState extends State<PagesTestWidget> {
  @override
  initState() {
    super.initState();
    _selectTab(widget.currentTab);
  }

  @override
  void didUpdateWidget(PagesTestWidget oldWidget) {
    _selectTab(oldWidget.currentTab);
    super.didUpdateWidget(oldWidget);
  }

  void _selectTab(int tabItem) {
    setState(() {
      widget.currentTab = tabItem; // == 3 ? 1 : tabItem;
      switch (tabItem) {
        case 0:
          widget.currentPage = const HomePage();
          break;
        case 1:
          widget.currentPage = const ChatList();
          break;
        case 2:
          widget.currentPage = const OrderScreen();
          break;
        case 3:
          widget.currentPage = const ProfileScreen();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //bool isKeyboardShowing = MediaQuery.of(context).viewInsets.vertical > 0;
    return WillPopScope(
      onWillPop: onWillPop,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/back.jpg",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          // drawer: buildDrawer(context, isGuest, name),
          backgroundColor: Colors.white.withOpacity(.7),
          key: widget.scaffoldKey,
          body: widget.currentPage,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Container(
              width: MediaQuery.of(context).size.width * .9,
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                border: Border.all(
                  width: 5,
                  color: Colors.white,
                ),
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Constants.darkGreyColor(),
                    Constants.lightGreyColor(),
                  ],
                ),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Colors.white,
                selectedItemColor: Colors.black,
                unselectedLabelStyle: const TextStyle(
                  color: Colors.white,
                ),
                selectedFontSize: 12,
                unselectedFontSize: 12,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                iconSize: 20,
                elevation: 0,
                backgroundColor: Colors.transparent,
                currentIndex: widget.currentTab,
                onTap: (int i) {
                  debugPrint(i.toString());
                  _selectTab(i);
                },
                // this will be set when a new tab is tapped
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(
                      FontAwesomeIcons.house,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      FontAwesomeIcons.solidMessage,
                    ),
                    label: 'Message',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      FontAwesomeIcons.bagShopping,
                    ),
                    label: 'Orders',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      FontAwesomeIcons.solidUser,
                    ),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (now.difference(widget.currentBackPressTime) >
        const Duration(seconds: 2)) {
      widget.currentBackPressTime = now;

      showSuccess(context, "Press again to exit");
      return Future.value(false);
    }
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    return Future.value(true);
  }
}
