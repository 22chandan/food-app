import 'package:flogo/main.dart';
import 'package:flogo/onboarding.dart';
import 'package:flutter/material.dart';
import 'contentmodel.dart';

class walkthrough extends StatefulWidget {
  @override
  State<walkthrough> createState() => _walkthroughState();
}

class _walkthroughState extends State<walkthrough> {
  int currentindex = 0;
  late PageController cntrol;
  @override
  void initState() {
    cntrol = PageController(initialPage: 0);
    super.initState();
  }

  void dispose() {
    cntrol.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, right: 10),
            alignment: Alignment.topRight,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginPage(),
                  ),
                );
              },
              child: Text("skip"),
              style: ElevatedButton.styleFrom(elevation: 0),
            ),
          ),
          Expanded(
            child: PageView.builder(
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentindex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                            image: AssetImage(
                          contents[i].image,
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          contents[i].title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          contents[i].discription,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
              height: 60,
              margin: EdgeInsets.all(40),
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  if (currentindex == contents.length - 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => LoginPage(),
                      ),
                    );
                  }
                  cntrol.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: currentindex == contents.length - 1
                        ? null
                        : CircleBorder()),
                child: currentindex == contents.length - 1
                    ? Container(
                        child: Row(
                        children: [
                          Text(
                            "Get Started ",
                            style: TextStyle(fontSize: 14),
                          ),
                          Icon(Icons.arrow_circle_right)
                        ],
                      ))
                    : Icon(Icons.arrow_circle_right, size: 50),
              ))
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentindex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
