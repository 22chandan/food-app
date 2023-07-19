import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<String> menuitem = ["Default menu 1", "Default menu 2"];

    return SizedBox(
      height: 185,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: menuitem.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10), // Add margin for spacing between items
            height: size.height * 0.25,
            width: size.width * 0.4,
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 20,
                  child: Container(
                    height: size.height * 0.23,
                    width: size.width * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 0, color: Colors.white),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 1.0,
                          spreadRadius: 0.0,
                        ),
                        BoxShadow(
                          color: Colors.black12,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 1.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Text("${menuitem[index]}"),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("3 starters"),
                              Text("3 Main Courses"),
                              Text("3 Desserts"),
                              Text("3 Drinks"),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Row(
                            children: [
                              Icon(Icons.people),
                              Text("Min 800"),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text("Start At Rs 777"),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 0,
                  child: Container(
                    height: size.height * 0.09,
                    width: size.width * 0.15,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 143, 196, 203),
                      border: Border.all(
                        width: 0,
                        color: Color.fromARGB(255, 143, 196, 203),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: const Offset(5.0, 5.0),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                        BoxShadow(
                          color: Colors.black12,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/image/plate.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
