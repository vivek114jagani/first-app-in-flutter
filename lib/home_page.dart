// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:my_app/router/name.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List image = [
    'assets/i1.ico',
    'assets/i2.jpg',
    'assets/i3.jpg',
    'assets/i4.png',
    'assets/i5.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(221, 27, 26, 26),
          elevation: 0,
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_drop_down,
                    size: 25,
                  ),
                  SizedBox(width: 85),
                  Stack(
                    children: [
                      Icon(
                        Icons.notifications,
                        size: 30,
                      ),
                      Positioned(
                        left: 10,
                        child: Icon(
                          Icons.brightness_1,
                          color: Colors.blue,
                          size: 19,
                        ),
                      ),
                      Positioned(
                        left: 15.6,
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(left: 130, top: 17),
            child: Row(
              children: [
                SafeArea(
                  child: Icon(
                    Icons.location_on,
                    color: Colors.blue[600],
                  ),
                ),
              ],
            ),
          ),
          title: Container(
            child: const Text(
              'Malang,ID',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
        ),
        drawer: const Drawer(),
        backgroundColor: const Color.fromARGB(221, 27, 26, 26),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                TextField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 15),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 26, 39, 46),
                    hintText: 'Find Partner...',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.blueAccent[200],
                      size: 25,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.filter_alt_rounded,
                        color: Colors.blueAccent[200],
                        size: 25,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  height: 80,
                  child: ListView.separated(
                    itemCount: image.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          image[index],
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      width: 10,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  height: 295,
                  width: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 69, 92, 105),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 290,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              'assets/i5.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 200, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'vivek jagani',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Container(
                                  height: 25,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '21',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              'Gujarat, India',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(40, 50),
                          backgroundColor:
                              const Color.fromARGB(255, 39, 55, 63),
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Icon(Icons.cancel),
                      ),
                      const SizedBox(width: 15),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(60, 70),
                          backgroundColor: Colors.blue[300],
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.message,
                          size: 40,
                        ),
                      ),
                      const SizedBox(width: 15),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(40, 50),
                          backgroundColor:
                              const Color.fromARGB(255, 39, 55, 63),
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Icon(Icons.star),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Color.fromARGB(255, 26, 39, 46),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    chat,
                  );
                },
                icon: const Icon(Icons.message),
              ),
              label: "Message",
              backgroundColor: const Color.fromARGB(255, 26, 39, 46),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    information1,
                  );
                },
                icon: const Icon(Icons.photo_camera_outlined),
              ),
              label: "Camera",
              backgroundColor: const Color.fromARGB(255, 26, 39, 46),
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.menu_open),
              label: "List",
              backgroundColor: Color.fromARGB(255, 26, 39, 46),
            ),
          ],
        ),
      ),
    );
  }
}
