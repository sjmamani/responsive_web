import 'package:flutter/material.dart';
import 'package:responsive_web/components/footer.dart';
import 'package:responsive_web/components/navbar.dart';
import 'package:responsive_web/components/side_menu.dart';

import 'components/jumbotron.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 300,
        ),
        child: SideMenu(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(
              minHeight: size.height,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Navbar(),
                Jumbotron(),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
