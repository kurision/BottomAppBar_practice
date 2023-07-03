import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  ScrollController _scrollController = ScrollController();
  bool showBottomAppBar = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        showBottomAppBar = false;
        setState(() {});
      } else {
        showBottomAppBar = true;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomAppBar'),
      ),
      body: Center(
          child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.green,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.yellow,
          ),
        ]),
      )),
      floatingActionButtonLocation: showBottomAppBar
          ? FloatingActionButtonLocation.centerDocked
          : FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: showBottomAppBar ? 56 : 0,
        curve: Curves.easeInOutSine,
        child: BottomAppBar(
            notchMargin: 8,
            shape: const CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                SizedBox(width: 50),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_outlined)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_outlined))
              ],
            )),
      ),
    );
  }
}
