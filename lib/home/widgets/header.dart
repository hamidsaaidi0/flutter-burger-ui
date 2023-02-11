import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    height: size.height * .2,
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(45),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const CircleAvatar(
                              backgroundColor: Colors.white70,
                              radius: 35,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/profile.png'),
                                backgroundColor: Colors.transparent,
                                radius: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Hamid Saaidi',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black45,
                                  ),
                                  child: Text(
                                    'Gold Member',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            Text(
                              '154.00 DH',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: size.width,
                  height: 50,
                  child: Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "What does your belly want to eat",
                        suffix: Icon(Icons.search),
                        contentPadding: EdgeInsets.only(left: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
