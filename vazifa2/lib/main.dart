import 'package:flutter/material.dart';
import 'package:vazifa2/full_info.dart';

int check = 0;
List fruits = [
  {
    "name": "Apple",
    "image": Image.asset(
      "assets/apple.jpeg",
      fit: BoxFit.cover,
    ),
    "propirties":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised"
  },
  {
    "name": "Peach",
    "image": Image.asset(
      "assets/peach.jpg",
      fit: BoxFit.cover,
    ),
    "propirties":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised"
  },
  {
    "name": "Quince",
    "image": Image.asset(
      "assets/quince.jpeg",
      fit: BoxFit.cover,
    ),
    "propirties":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised"
  },
];
void main() {
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => const Home(),
        "/full": (context) => FullInfo(),
      },
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Fruits",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Wrap(
          spacing: 15,
          runSpacing: 15,
          children: [
            for (var i = 0; i < 3; i++)
              buttons(fruits[i]['image'], fruits[i]['name'], i, context)
          ],
        ),
      ),
    );
  }
}

Widget buttons(Image image, String text, int i, BuildContext context) {
  return InkWell(
    onTap: () {
      check = i;
      Navigator.pushNamed(context, "/full");
    },
    child: Container(
      height: 180,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.blue),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 100,
            child: image,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
          )
        ],
      ),
    ),
  );
}
