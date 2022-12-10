import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:web_app/utils/colors.dart';
import 'package:web_app/utils/enum.dart';
import 'package:web_app/responsive.dart';
import 'package:web_app/screens/aboutscreen.dart';
import 'package:web_app/screens/contact.dart';
import 'package:web_app/screens/homscreen.dart';
import 'package:web_app/screens/publication.dart';
import 'package:web_app/base_components/footer.dart';

Pages hoveredpage = Pages.none;
final _controller = AutoScrollController(axis: Axis.vertical);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  bool _openDrawer = false;
  final _divider = Container(
    margin: EdgeInsets.symmetric(
      vertical: 42,
    ),
    height: 1,
    width: double.infinity,
    color: DarkColors.heading,
  );

  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 450),
    );
  }

  void closeDrawer() {
    setState(() {
      _openDrawer = !_openDrawer;
      (_openDrawer)
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkColors.backgroundDark,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildAppBar() {
    final deviceSize = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: !ResponsiveWidget.isLargeScreen(context),
      leading: (!ResponsiveWidget.isLargeScreen(context))
          ? IconButton(
              onPressed: () {
                closeDrawer();
              },
              icon: AnimatedIcon(
                icon: AnimatedIcons.menu_close,
                progress: _animationController,
              ),
            )
          : Container(),
      title: Text(
        "<Sumit Tiware/>",
        style: TextStyle(
          color: DarkColors.heading,
          fontWeight: FontWeight.bold,
          fontSize: 30,
          fontFamily: "LaBelleAurore",
        ),
      ),
      actions: (ResponsiveWidget.isLargeScreen(context))
          ? [
              _buildSectionButton("Home", 0, Pages.home),
              SizedBox(
                width: deviceSize.width * 0.04,
              ),
              _buildSectionButton("About", 1, Pages.about),
              SizedBox(
                width: deviceSize.width * 0.04,
              ),
              _buildSectionButton("Portfolio", 2, Pages.work),
              SizedBox(
                width: deviceSize.width * 0.04,
              ),
              _buildSectionButton("Contact", 3, Pages.contact),
              SizedBox(
                width: 40,
              )
            ]
          : [],
    );
  }

  Widget _buildBody() {
    final deviceSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          width: deviceSize.width,
          height: deviceSize.height,
          child: ListView(
            controller: _controller,
            children: [
              Padding(
                padding: (ResponsiveWidget.isSmallScreen(context))
                    ? const EdgeInsets.symmetric(
                        horizontal: 16,
                      )
                    : const EdgeInsets.symmetric(
                        horizontal: 64,
                      ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildScrollItem(
                      0,
                      Home(),
                      Pages.home,
                    ),
                    _divider,
                    _buildScrollItem(
                      1,
                      AboutScreen(),
                      Pages.about,
                    ),
                    _divider,
                    _buildScrollItem(
                      2,
                      PublicationScreen(),
                      Pages.work,
                    ),
                    _divider,
                    _buildScrollItem(
                      3,
                      ContactPage(),
                      Pages.contact,
                    ),
                  ],
                ),
              ),
              FooterWidget()
            ],
          ),
        ),
        if (_openDrawer)
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.all(30),
              color: DarkColors.backgroundDark.withOpacity(0.9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildSectionButton(
                    "Home",
                    0,
                    Pages.home,
                  ),
                  _buildSectionButton(
                    "About",
                    1,
                    Pages.about,
                  ),
                  _buildSectionButton(
                    "Portfolio",
                    2,
                    Pages.work,
                  ),
                  _buildSectionButton(
                    "Contact",
                    3,
                    Pages.contact,
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }

  Widget _buildSectionButton(
    String title,
    int index,
    Pages pagename,
  ) {
    return InkWell(
      onTap: () {
        setState(() {
          _controller.scrollToIndex(index,
              duration: Duration(milliseconds: 300),
              preferPosition: AutoScrollPosition.begin);
          currentPage = pagename;
        });
        if (_openDrawer) closeDrawer();
      },
      onHover: (hovered) {
        setState(() {
          hoveredpage = (hovered) ? pagename : Pages.none;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  color: (hoveredpage == pagename)
                      ? StyleColors.pink
                      : DarkColors.heading),
            ),
            if (hoveredpage == pagename)
              Container(
                height: 3,
                width: 40,
                color: StyleColors.pink,
              )
          ],
        ),
      ),
    );
  }

  Widget _buildScrollItem(
    int index,
    Widget target,
    Pages pagename,
  ) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _controller,
      index: index,
      child: target,
    );
  }
}
