import 'package:burger_app/home/widgets/categories.dart';
import 'package:burger_app/home/widgets/hamburger_list.dart';
import 'package:burger_app/home/widgets/header.dart';
import 'package:flutter/material.dart';

class Hamburger extends StatefulWidget {
  const Hamburger({Key? key}) : super(key: key);

  @override
  State<Hamburger> createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: const Text("Delever Me"),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
              ),
            ],
          ),
          Header(),
          Categories(),
          Hamburger_list(
            row: 1,
          ),
          Hamburger_list(
            row: 2,
          ),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(45),
        ),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_alert),
                  color: Colors.white,
                ),
                const Spacer(flex: 2),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.turned_in),
                  color: Colors.white,
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
