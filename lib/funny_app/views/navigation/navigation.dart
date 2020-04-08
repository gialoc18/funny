import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sourceapp/funny_app/colors.dart';
import 'package:sourceapp/funny_app/views/navigation/animated_buttom/fancy_fab.dart';
import 'package:sourceapp/funny_app/views/ui/home_view.dart';
import 'package:sourceapp/funny_app/views/ui/hot_view.dart';
import 'package:sourceapp/funny_app/views/ui/image_view.dart';
import 'package:sourceapp/funny_app/views/ui/video_view.dart';


class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
  super.initState();

  tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
  tabController.dispose();
  super.dispose();
  }

  Widget getTabBar() {
  return TabBar(
      controller: tabController,
      tabs: [
        Tab(icon: Icon(Icons.home,color: clIconAppBar,)),
        Tab(icon: Icon(Icons.whatshot,color: clIconAppBar,),),
        Tab(icon: Icon(Icons.image,color: clIconAppBar,),),
        Tab(icon: Icon(Icons.video_library,color: clIconAppBar,),),
      ]
    );
  }
// content page
  Widget getTabBarPages() {
  return TabBarView(
      controller: tabController,
      children: <Widget>[
        HomeView(),
        HotView(),
        ImageView(),
        VideoView()
      ]
  );
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        bottom: new PreferredSize(
          child: SafeArea(
            child: getTabBar(),
          ), preferredSize: null,
        ),
        ),
      body: getTabBarPages(),
      floatingActionButton: FancyFab(),
  );
  }
}
