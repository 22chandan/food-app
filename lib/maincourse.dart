import 'package:flutter/material.dart';

class maincourse extends StatelessWidget {
  const maincourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageUrls = [
      'assets/image/biryani.png',
      'assets/image/bread.png',
      'assets/image/rice2.png',
    ];
    List<String> name = ["Biryani", "Bread", "Plane Rice"];

    return SizedBox(
      height: 138,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [],
                //shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text("${name[index]}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
