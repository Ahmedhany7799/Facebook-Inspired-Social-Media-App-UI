import 'package:facebook/widgets/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      "assets/images/image3.jpg",
      "assets/images/model1.jpg",
      "assets/images/model1.jpg",
      "assets/images/model1.jpg",
      "assets/images/image3.jpg",
      "assets/images/image3.jpg",
      "assets/images/model1.jpg",
      "assets/images/image3.jpg",
      "assets/images/model1.jpg",
      "assets/images/image3.jpg",
    ];
    return DefaultTabController(
      initialIndex: 1,
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Facebook',
            style: TextStyle(
                color: Color(0xff1877F2),
                fontSize: 30,
                fontWeight: FontWeight.w800),
          ),
          actions: [
            SvgPicture.asset(
              'assets/images/Plus.svg',
              //semanticsLabel: 'My SVG Image',
              height: 30,
              width: 70,
            ),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              'assets/images/Search.svg',
              //semanticsLabel: 'My SVG Image',
              height: 30,
              width: 70,
            ),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              'assets/images/Messenger.svg',
              semanticsLabel: 'My SVG Image',
              height: 30,
              width: 70,
            ),
            const SizedBox(
              width: 10,
            ),
          ],
          bottom: TabBar(
            //dividerColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                child: SvgPicture.asset(
                  'assets/images/Vector.svg',
                  semanticsLabel: 'My SVG Image',
                  height: 30,
                  width: 70,
                ),
              ),
              Tab(
                child: SvgPicture.asset(
                  'assets/images/Group 17.svg',
                  semanticsLabel: 'My SVG Image',
                  height: 30,
                  width: 70,
                ),
              ),
              Tab(
                child: SvgPicture.asset(
                  'assets/images/Store.svg',
                  semanticsLabel: 'My SVG Image',
                  height: 30,
                  width: 70,
                ),
              ),
              Tab(
                child: SvgPicture.asset(
                  'assets/images/Profile.svg',
                  semanticsLabel: 'My SVG Image',
                  height: 30,
                  width: 70,
                ),
              ),
              Tab(
                child: SvgPicture.asset(
                  'assets/images/Notification.svg',
                  semanticsLabel: 'My SVG Image',
                  height: 30,
                  width: 70,
                ),
              ),
              Tab(
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/image3.jpg",
                    fit: BoxFit.cover,
                    width: 32,
                    height: 32,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                //color: Colors.red,
                width: double.infinity,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/images/image3.jpg",
                          fit: BoxFit.cover,
                          width: 42,
                          height: 42,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'What’s in Your Mind?',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0XFF898F9C),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 150,
                      ),
                      const Image(
                        image: AssetImage(
                          'assets/images/Photos.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 170,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                      child: Image.asset(
                                        'assets/images/image3.jpg',
                                        height: 120,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Create a Story',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff242527),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Positioned(
                            bottom: 39,
                            right: 45,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.blue,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 210,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: SizedBox(
                                width: 130,
                                height: 90,
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "${items[index]}"))),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: ClipOval(
                                        child: Image.asset(
                                          "${items[index]}",
                                          fit: BoxFit.cover,
                                          width: 52,
                                          height: 52,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 2,
              ),
              const Post(),
              const Post(),
              const Post(),
            ],
          ),
        ),
      ),
    );
  }
}
