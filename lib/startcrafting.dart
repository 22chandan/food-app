import 'package:flutter/material.dart';

class startcrafting extends StatefulWidget {
  const startcrafting({super.key});

  @override
  State<startcrafting> createState() => _startcraftingState();
}

class _startcraftingState extends State<startcrafting> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset("assets/image/default1.png"),
              width: 170,
              height: 160,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child:
                  Expanded(child: Image.asset("assets/image/traditional2.png")),
              width: 170,
              height: 160,
            ),
          ],
        ));
  }
}
