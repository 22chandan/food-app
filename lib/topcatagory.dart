import 'package:flutter/material.dart';

class topcatagory extends StatefulWidget {
  const topcatagory({super.key});

  @override
  State<topcatagory> createState() => _topcatagoryState();
}

class _topcatagoryState extends State<topcatagory> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Image.asset("assets/image/starter.png"),
                  width: 60,
                  height: 60,
                ),
                Text("Starters")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Image.asset("assets/image/drink.png"),
                  width: 60,
                  height: 60,
                ),
                Text("Drinks")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Image.asset("assets/image/rice.png"),
                  width: 60,
                  height: 60,
                ),
                Text("Rice")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Image.asset("assets/image/curry.png"),
                  width: 60,
                  height: 60,
                ),
                Text("Curry")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Image.asset("assets/image/deserts.png"),
                  width: 60,
                  height: 60,
                ),
                Text("Deserts")
              ],
            ),
          )
        ],
      ),
    );
  }
}
/*
text("Top Categories",style:TextStyle(fontWeight:FontWeight.bold,fontSize:20))
 */