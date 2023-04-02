import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  late Size size;
  bool isOpen = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    print("size width: ${size.width}");
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: InkWell(
              child: Icon(Icons.menu),
              onTap: () {
                setState(() {
                  isOpen = !isOpen;
                });
              },
            ),
          )
        ],
      ),
      // drawer: profileDrawer(),
      // endDrawer: Container(
      //   width: size.width * 0.6,
      //   color: Colors.lightBlue,
      // ),

      body: Stack(
        children: [
          Center(
            child: Text("Animation Screen"),
          ),
          AnimatedContainer(
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(seconds: 1),
            height: double.infinity,
            width: size.width * 0.7,
            color: Colors.blue,
            transform: Matrix4.translationValues(
                isOpen ? size.width * 0.3 : size.width, 0, 0),
          )
        ],
      ),
    );
  }
}
