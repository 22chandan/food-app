import 'package:flutter/material.dart';

class lastpage extends StatelessWidget {
  const lastpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 800,
              child: Image.asset("assets/image/lastpage.png"),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Delicious food with",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            ),
            Text(
              "Profesional service !",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            ),
            Container(
              child: Row(children: []),
            )
          ],
        ),
      ),
    );
  }
}
