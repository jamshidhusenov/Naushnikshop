import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(229, 70, 96, 1),
        child: const Image(
          image: AssetImage(
            "assets/icons/Scan.png",
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipPath(
        clipper: MyClipper(),
        child: const BottomAppBar(
          color: Colors.white,
          elevation: 2,
          shadowColor: Colors.black,
          height: 70,
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
            children: [
              SizedBox(
                width: 33,
              ),
              Column(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Image(
                    image: AssetImage("assets/icons/ic_home.png"),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Font1",
                      color: Color.fromRGBO(229, 70, 96, 1),
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              Column(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Image(image: AssetImage("assets/icons/ic_category.png")),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Font1",
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              Column(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Image(image: AssetImage("assets/icons/ic_heart.png")),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Interest",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Font1",
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              Column(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Image(image: AssetImage("assets/icons/ic_person.png")),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Font1",
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 33,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 6,
                        ),
                        Image(
                          image: AssetImage("assets/icons/ic_search2.png"),
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Image(
                      image: AssetImage("assets/icons/ic_ring.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 250,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 180,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(229, 70, 96, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Music and No more",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Font1",
                                color: Colors.white,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            const Text(
                              "10% off for One of the best\nheadphones in the world",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Font1",
                                color: Colors.white,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Container(
                              height: 40,
                              width: 130,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Row(
                                children: [
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text(
                                    "Order Now ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Font1",
                                      color: Colors.black,
                                    ),
                                  ),
                                  Icon(
                                    Icons.navigate_next,
                                    color: Colors.black,
                                    size: 23,
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 180,
                              ),
                              Image(
                                image:
                                    AssetImage("assets/images/naushnik2.png"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                const Text(
                  "Popular Category",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Font1",
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 131,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromRGBO(229, 70, 96, 1),
                        ),
                        child: const Row(
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Icon(
                              Icons.headphones,
                              color: Colors.white,
                              size: 23,
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              "HeadPhone",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Font1",
                                color: Colors.white,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 100,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Row(
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Icon(
                              Icons.phone_android_rounded,
                              color: Colors.black,
                              size: 23,
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              "Mobile",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Font1",
                                color: Colors.black,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 200,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Row(
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Icon(
                              Icons.mouse_outlined,
                              color: Colors.black,
                              size: 23,
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              "Mouse & Keyboard",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Font1",
                                color: Colors.black,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 120,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Row(
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Icon(
                              Icons.tv_sharp,
                              color: Colors.black,
                              size: 23,
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              "Computer",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Font1",
                                color: Colors.black,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 150,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Row(
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Icon(
                              Icons.watch,
                              color: Colors.black,
                              size: 23,
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              "Smart Watch",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Font1",
                                color: Colors.black,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 110,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Row(
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Icon(
                              CupertinoIcons.camera,
                              color: Colors.black,
                              size: 23,
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              "Camera",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Font1",
                                color: Colors.black,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 130,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Row(
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Icon(
                              CupertinoIcons.mic,
                              color: Colors.black,
                              size: 23,
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              "Microphone",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Font1",
                                color: Colors.black,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16.5),
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            // color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: 5,
                                blurRadius: 10,
                                offset: Offset(1, 1),
                                color: Color.fromRGBO(0, 0, 0, 0.12),
                              ),
                            ]),
                        child: Row(
                          children: [
                            Container(
                              width: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromRGBO(229, 70, 96, 0.2),
                              ),
                              child: const Image(
                                image: AssetImage("assets/images/n1.png"),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Text(
                                      "Bose QC-700",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Font1",
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 70,
                                    ),
                                    Icon(CupertinoIcons.heart),
                                  ],
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                const Text(
                                  "Over Ear, Wireless Bluetooth\nHeadphones with Built-In\nMicrophone",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Font1",
                                    color: Colors.grey,
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "\$379.00",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Font1",
                                        color: Color.fromRGBO(229, 70, 96, 1),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 70,
                                    ),
                                    Container(
                                      width: 64,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: const Color.fromRGBO(
                                            229, 70, 96, 1),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Buy",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Font1",
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: EdgeInsets.all(16.5),
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            // color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: 5,
                                blurRadius: 10,
                                offset: Offset(1, 1),
                                color: Color.fromRGBO(0, 0, 0, 0.12),
                              ),
                            ]),
                        child: Row(
                          children: [
                            Container(
                              width: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromRGBO(229, 70, 96, 0.2),
                              ),
                              child: const Image(
                                image: AssetImage("assets/images/n2.png"),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Text(
                                      "Bose QC-700",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Font1",
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 70,
                                    ),
                                    Icon(CupertinoIcons.heart),
                                  ],
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                const Text(
                                  "Over Ear, Wireless Bluetooth\nHeadphones with Built-In\nMicrophone",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Font1",
                                    color: Colors.grey,
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "\$379.00",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Font1",
                                        color: Color.fromRGBO(229, 70, 96, 1),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 70,
                                    ),
                                    Container(
                                      width: 64,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: const Color.fromRGBO(
                                            229, 70, 96, 1),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Buy",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Font1",
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, size.height / 2);
    path.quadraticBezierTo(0, 0, size.height / 2, 0);
    path.lineTo(size.width - size.height / 2, 0);
    path.quadraticBezierTo(size.width, 0, size.width, size.height / 2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
