import 'package:flutter/material.dart';

import 'my_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyText(),
    );
  }
}

// class MyHome extends StatefulWidget {
//   const MyHome({super.key});

//   @override
//   State<MyHome> createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   late Size size;
//   bool isOpen = false;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     size = MediaQuery.of(context).size;
//     print("size width: ${size.width}");
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 12.0),
//             child: InkWell(
//               child: Icon(Icons.menu),
//               onTap: () {
//                 setState(() {
//                   isOpen = !isOpen;
//                 });
//               },
//             ),
//           )
//         ],
//       ),
//       // drawer: profileDrawer(),
//       // endDrawer: Container(
//       //   width: size.width * 0.6,
//       //   color: Colors.lightBlue,
//       // ),

//       body: Stack(
//         children: [
//           Center(
//             child: Text("Animation Screen"),
//           ),
//           AnimatedContainer(
//             curve: Curves.fastLinearToSlowEaseIn,
//             duration: Duration(seconds: 1),
//             height: double.infinity,
//             width: size.width * 0.7,
//             color: Colors.blue,
//             transform: Matrix4.translationValues(
//                 isOpen ? size.width * 0.3 : size.width, 0, 0),
//           )
//         ],
//       ),
//     );
//   }
// }

// class MyHome2 extends StatefulWidget {
//   const MyHome2({super.key});
//
//   @override
//   State<MyHome2> createState() => _MyHome2State();
// }
//
// class _MyHome2State extends State<MyHome2> with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this, // SingleTickerProviderStateMixin 으로 에러 제거
//       duration: const Duration(seconds: 2),
//     );
//     _animationController.repeat();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Animation<double> _animation =
//         Tween(begin: 0.0, end: 2.0).animate(_animationController);
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: ScaleTransition(
//           scale: _animation,
//           child: Container(
//             width: 200,
//             height: 200,
//             color: Colors.blue,
//           ),
//         ),
//       ),
//     );
//   }

class MyHome3 extends StatefulWidget {
  const MyHome3({super.key});

  @override
  State<MyHome3> createState() => _MyHome3State();
}

class _MyHome3State extends State<MyHome3> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  // late Animation<double> _animation;

  // Widget mWidget = FirstWidget();

  double myOpacity = 1.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this, // SingleTickerProviderStateMixin 으로 에러 제거
      duration: const Duration(seconds: 3),
    );
    Future.delayed(Duration(seconds: 3), () {
      change();
    },
    );
    _animationController.repeat();
  }

  void change(){
    setState(() {
      myOpacity = 0.2;
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                duration: Duration(seconds: 3),
                opacity: myOpacity,
                child: Container(
                  color: Colors.blue,
                  width: 200,
                  height: 200,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                    });
                  },
                  child: Text("버튼")),
            ],
          )),
    );
  }
}

// 스위쳐
// class FirstWidget extends StatelessWidget {
//   const FirstWidget({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue[300],
//       width: 100,
//       height: 100,
//     );
//   }
// }
//
// class SecondWidget extends StatelessWidget {
//   const SecondWidget({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.orange,
//       width: 300,
//       height: 300,
//     );
//   }
// }

// 회전하는 애니메이션
// @override
// void initState() {
//   super.initState();
//   _animationController = AnimationController(
//     vsync: this, // SingleTickerProviderStateMixin 으로 에러 제거
//     duration: const Duration(seconds: 3),
//   );
//   _animationController.repeat();
// }
//
// @override
// void dispose() {
//   _animationController.dispose();
//   super.dispose();
// }
//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     backgroundColor: Colors.white,
//     body: Center(
//       child: RotationTransition(
//         turns: CurvedAnimation(
//             parent: _animationController,
//             curve: Curves.ease),
//         child: Container(
//           color: Colors.blue,
//           width: 100,
//           height: 100,
//         ),
//       ),
//     ),
//   );
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     backgroundColor: Colors.white,
//     body: Center(
//       child: RotationTransition(
//         turns: CurvedAnimation(
//             parent: _animationController,
//             curve: Curves.ease),
//         child: Container(
//           color: Colors.blue,
//           width: 100,
//           height: 100,
//         ),
//       ),
//     ),
//   );
// }
// }
// }  @override
// Widget build(BuildContext context) {
//   const double smallLogo = 100;
//   const double bigLogo = 200;
//
//   return Scaffold(
//     backgroundColor: Colors.white,
//     body: LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) {
//         final Size biggest = constraints.biggest;
//         return Stack(
//           children: <Widget>[
//             PositionedTransition(
//               rect: RelativeRectTween(
//                 begin: RelativeRect.fromSize(
//                     const Rect.fromLTWH(0, 0, smallLogo, smallLogo), biggest),
//                 end: RelativeRect.fromSize(
//                     Rect.fromLTWH(biggest.width - bigLogo,
//                         biggest.height - bigLogo, bigLogo, bigLogo),
//                     biggest),
//               ).animate(CurvedAnimation(
//                 parent: _animationController,
//                 curve: Curves.elasticInOut,
//               )),
//               child: const Padding(
//                   padding: EdgeInsets.all(8), child: FlutterLogo()),
//             ),
//           ],
//         );
//       },
//     ),
//   );
// }

//   @override
//   Widget build(BuildContext context) {
//     // double screenHeight = MediaQuery.of(context).size.height;
//     double screenWidth = MediaQuery.of(context).size.width;
//
//     Animation<RelativeRect> _animation =RelativeRectTween(
//       begin: RelativeRect.fromLTRB(screenWidth, 0, 0, 0),
//       end: RelativeRect.fromLTRB(0, 0, 0, 0),
//     ).animate(CurvedAnimation(
//       parent: _animationController,
//       curve: Curves.elasticInOut,
//     ));
//
//     return Scaffold(
//       body: Stack(
//           children: [ PositionedTransition(
//             rect: _animation,
//             child: Container(
//               color: Colors.blue,
//             ),
//           )
//           ],
//       ),
//     );
//   }
// }
