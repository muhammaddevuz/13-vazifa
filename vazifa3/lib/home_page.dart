import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vazifa3/main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  int check = 1;
  Color color1 = const Color.fromARGB(255, 106, 27, 154);
  Color color2 = Colors.grey;
  Color color3 = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(141, 24, 23, 23),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/avatar.jpg"),
                      fit: BoxFit.cover)),
              child: AppBar(
                  actions: const [
                    Icon(
                      Icons.screen_share_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15),
                  ],
                  backgroundColor: Colors.transparent,
                  leadingWidth: 75,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/explore");
                    },
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Avatar: The Way of",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            "Water",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.bookmark_border,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 20),
                          Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.purple[800],
                        size: 30,
                      ),
                      Text(
                        "9.8",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.purple[800]),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.purple[800],
                        size: 25,
                      ),
                      const Text(
                        "2022",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 2,
                                color:
                                    const Color.fromARGB(255, 106, 27, 154))),
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, right: 10, left: 10),
                        child: Text(
                          "13+",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.purple[800]),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 2,
                                color:
                                    const Color.fromARGB(255, 106, 27, 154))),
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, right: 10, left: 10),
                        child: Text(
                          "United States",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.purple[800]),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 2,
                                color:
                                    const Color.fromARGB(255, 106, 27, 154))),
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, right: 10, left: 10),
                        child: Text(
                          "Subtitle",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.purple[800]),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.purple[800]),
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.play_circle_fill,
                                color: Colors.white,
                                size: 30,
                              ),
                              Text(
                                " Play",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 106, 27, 154),
                                  width: 3)),
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.download,
                                color: Colors.purple[800],
                                size: 28,
                              ),
                              Text(
                                " Download",
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple[800]),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text:
                            "Lorem Ipsum is simply dummy text of the printing type",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 16)),
                    TextSpan(text: '\n\n'),
                    TextSpan(
                        text:
                            "Lorem Ipsum is simply dummy text of the printing type",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 16)),
                    TextSpan(
                        text:
                            "Lorem Ipsum is simply dummy text of the printing type",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 16)),
                    TextSpan(
                        text: "Lorem Ipsum is simply text print...",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 16)),
                    TextSpan(
                        text: "View more",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.purple,
                            fontSize: 16)),
                  ])),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [for (var i = 0; i < 5; i++) persons()],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              color1 = const Color.fromARGB(255, 106, 27, 154);
                              color2 = Colors.grey;
                              color3 = Colors.grey;
                              check = 1;
                            });
                          },
                          child: Text(
                            "Trailers",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: color1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              color1 = Colors.grey;
                              color2 = const Color.fromARGB(255, 106, 27, 154);
                              color3 = Colors.grey;
                              check = 2;
                            });
                          },
                          child: Text(
                            "More Like",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: color2),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              color1 = Colors.grey;
                              color2 = Colors.grey;
                              color3 = const Color.fromARGB(255, 106, 27, 154);
                              check = 3;
                            });
                          },
                          child: Text(
                            "Comments",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: color3),
                          ),
                        ),
                      ),
                    ],
                  ),
                  check == 1
                      ? trailers()
                      : (check == 2)
                          ? moreLike()
                          : comments()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget trailer() {
  return SizedBox(
    child: Column(
      children: [
        Row(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              clipBehavior: Clip.hardEdge,
              height: 150,
              width: 150,
              child: Image.asset(
                "assets/avatar.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Trailer 3:Final",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  "1m 45s",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 54, 2, 2)),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Updaites",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.purple[800]),
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    ),
  );
}

Widget persons() {
  return SizedBox(
    child: Row(
      children: [
        Container(
          decoration: const BoxDecoration(shape: BoxShape.circle),
          clipBehavior: Clip.hardEdge,
          height: 70,
          width: 70,
          child: Image.asset(
            "assets/man.jpg",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 15),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "James",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Text(
              "Cameron",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Text(
              "Director",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(width: 20),
      ],
    ),
  );
}

Widget trailers() {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
              height: 3,
              color: Colors.purple[800],
            )),
            Expanded(
                child: Container(
              height: 3,
              color: Colors.grey,
            )),
            Expanded(
                child: Container(
              height: 3,
              color: Colors.grey,
            )),
          ],
        ),
        const SizedBox(height: 20),
        for (var i = 0; i < 3; i++) trailer()
      ],
    ),
  );
}

Widget moreLike() {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
              height: 3,
              color: Colors.grey,
            )),
            Expanded(
                child: Container(
              height: 3,
              color: Colors.purple[800],
            )),
            Expanded(
                child: Container(
              height: 3,
              color: Colors.grey,
            )),
          ],
        ),
        const SizedBox(height: 20),
        Wrap(
          spacing: 15,
          runSpacing: 15,
          children: [for (var i = 0; i < 4; i++) posters()],
        )
      ],
    ),
  );
}

Widget comments() {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
              height: 3,
              color: Colors.grey,
            )),
            Expanded(
                child: Container(
              height: 3,
              color: Colors.grey,
            )),
            Expanded(
                child: Container(
              height: 3,
              color: Colors.purple[800],
            )),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "24.6K Comments",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "See all",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple[800]),
            ),
          ],
        ),
        const SizedBox(height: 20),
        for (var i = 0; i < 3; i++) comment()
      ],
    ),
  );
}

Widget comment() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(shape: BoxShape.circle),
                clipBehavior: Clip.hardEdge,
                height: 70,
                width: 70,
                child: Image.asset(
                  "assets/man.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 15),
              const Text(
                "24.6K Comments",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          const Icon(
            Icons.more_vert_outlined,
            color: Colors.white,
            size: 30,
          )
        ],
      ),
      const SizedBox(height: 10),
      const Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been",
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
      ),
      const SizedBox(height: 15),
      const Row(
        children: [
          Icon(
            CupertinoIcons.heart_fill,
            color: Colors.orange,
            size: 30,
          ),
          SizedBox(width: 10),
          Text(
            "938",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          SizedBox(width: 30),
          Text(
            "3 days ago",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ],
      ),
      const SizedBox(height: 30),
    ],
  );
}
