import 'package:flutter/material.dart';
import 'package:flutter_routes/pages/aboutPage.dart';
import 'package:flutter_routes/pages/helpPage.dart';
import 'package:flutter_routes/pages/home.dart';
import 'package:flutter_routes/pages/profilePage.dart';
import 'package:flutter_routes/pages/settingsPage.dart';

class LandingPage extends StatefulWidget {
  final String page;
  final String extra;

  const LandingPage({Key key, this.page, this.extra}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

List<String> pages = [
  'home',
  'about',
  'profile',
  'settings',
  'help',
];

List<IconData> icons = [
  Icons.home,
  Icons.pages_rounded,
  Icons.person_rounded,
  Icons.settings_rounded,
  Icons.help_rounded,
];

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: icons.map((e) {
                  return NavItem(
                    selected: icons.indexOf(e) == pages.indexOf(widget.page),
                    icon: e,
                    onTap: () {
                      if (icons.indexOf(e) == 1) {
                        Navigator.pushNamed(
                            context, '/main/${pages[icons.indexOf(e)]}/arpit');
                      } else {
                        Navigator.pushNamed(
                            context, '/main/${pages[icons.indexOf(e)]}');
                      }
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Center(
                child: IndexedStack(
                  index: pages.indexOf(widget.page),
                  children: [
                    Home(),
                    About(widget.extra),
                    Profile(),
                    Settings(),
                    Help(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatefulWidget {
  final IconData icon;
  final bool selected;
  final Function onTap;

  const NavItem({Key key, this.icon, @required this.selected, this.onTap})
      : super(key: key);

  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          widget.onTap();
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 375),
          width: double.infinity,
          height: 60.0,
          color: widget.selected ? Colors.black87 : Colors.white,
          child: Icon(
            widget.icon,
            color: widget.selected ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }
}
