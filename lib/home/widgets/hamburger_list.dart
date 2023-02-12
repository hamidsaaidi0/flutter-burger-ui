import 'package:burger_app/home/helper.dart';
import 'package:burger_app/home/widgets/burger_page.dart';
import 'package:flutter/material.dart';

class Hamburger_list extends StatefulWidget {
  int row;

  Hamburger_list({required this.row});

  @override
  State<Hamburger_list> createState() => _Hamburger_listState();
}

class _Hamburger_listState extends State<Hamburger_list> {
  @override
  Widget build(BuildContext context) {
    int items = 10;
    return SliverToBoxAdapter(
      child: Container(
        height: widget.row == 2 ? 320 : 240,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            bool reverse = widget.row == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                Container(
                  height: 240,
                  width: 200,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: index == items ? 20 : 0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(BurgerPage.tag);
                    },
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              reverse ? 'Chicken Burger' : 'Bacon Burger',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  '150.95 DH',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(BurgerPage.tag);
                    },
                    child: reverse
                        ? beconImage(120, 'assets/images/chicken.png')
                        : beconImage(120, 'assets/images/bacon.png'),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
