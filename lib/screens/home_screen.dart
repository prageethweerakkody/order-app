import 'package:flutter/material.dart';
import 'body.dart';
import 'items_list_view.dart';
import 'package:flutter_app/data/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<HomeScreen>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: kTextColor,
          onPressed: () {},
        ),
        title: const Text('McDonalds', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        actions: <Widget>[],
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.blue,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 2,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
          tabs: const <Widget>[
            Tab(
              child: Text(
                "Lunch",
                style: const TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                "Dinner",
                style: const TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            Tab(
              //icon: Icon(Icons.brightness_5_sharp),
              child: Text(
                "Happy set",
                style: const TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            Tab(
              //icon: Icon(Icons.brightness_5_sharp),
              child: Text(
                "Morning",
                style: const TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            Tab(
              //icon: Icon(Icons.brightness_5_sharp),
              child: Text(
                "KODO",
                style: const TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            Tab(
              //icon: Icon(Icons.brightness_5_sharp),
              child: Text(
                "Morning",
                style: const TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            Tab(
              // icon: Icon(Icons.brightness_5_sharp),
              child: Text(
                "Lunch",
                style: const TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          new Body(),
          new ItemListView(),
          new ItemListView(),
          new ItemListView(),
          new ItemListView(),
          new ItemListView(),
          new ItemListView(),
        ],
      ),
    );
  }
}
