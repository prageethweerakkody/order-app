import 'package:flutter/material.dart';
import 'items_list_view.dart';
import 'package:flutter_app/data/constants.dart';

class OrderScreen extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<OrderScreen>
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
        title: const Text('Menu', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: kTextColor,
            onPressed: () {},
          ),
        ],
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
              child: Text(
                "Happy set",
                style: const TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                "Morning",
                style: const TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                "KODO",
                style: const TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                "Morning",
                style: const TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            Tab(
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
          new ItemListView(),
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
