import 'package:flutter/material.dart';
import 'package:vazifa2/main.dart';

class FullInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(fruits[check]['name'],style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: fruits[check]['image'],
            ),
            const SizedBox(height: 20),
            Text(fruits[check]['propirties'],style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
