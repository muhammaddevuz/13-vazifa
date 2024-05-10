import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vazifa3/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) =>const Home(),
        "/explore": (context) =>const Explore(),
      },
      debugShowCheckedModeBanner: false,
      home: Explore(),
    );
  }
}

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(141, 24, 23, 23),
        body: Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 74, 72, 72)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white60,
                              size: 30,
                            ),
                            Text(
                              "  Search by title, genre, actor",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 59, 17, 4)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.candlestick_chart_rounded,
                          size: 50,
                          color: Colors.grey[400],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: [for (var i = 0; i < 10; i++) posters()],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(233, 8, 1, 26)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/home");
                      },
                      icon: const Icon(
                        Icons.home_filled,
                        color: Colors.grey,
                        size: 40,
                      ),
                    ),
                    const Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          height: 0.1),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.compass_fill,
                        color: Color.fromARGB(255, 180, 21, 167),
                        size: 40,
                      ),
                    ),
                    const Text(
                      "Exlore",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 180, 21, 167),
                          height: 0.1),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline_rounded,
                        color: Colors.grey,
                        size: 40,
                      ),
                    ),
                    const Text(
                      "My List",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          height: 0.1),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.download,
                        color: Colors.grey,
                        size: 40,
                      ),
                    ),
                    const Text(
                      "Download",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          height: 0.1),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person,
                        color: Colors.grey,
                        size: 40,
                      ),
                    ),
                    const Text(
                      "Profile",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          height: 0.1),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

Widget posters() {
  return Container(
    width: 190,
    height: 270,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
            image: AssetImage("assets/deadpool.jpg"), fit: BoxFit.cover)),
    padding: const EdgeInsets.all(10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.purple[800]),
          padding: const EdgeInsets.all(10),
          child: const Text(
            "9.8",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
