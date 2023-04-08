import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // body: Center(child: buildSizedBox()), // fade
        // body: buildTyper());
        // body: buildLiquidy());
        body: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              FadeAnimatedText(
                'Fade First',
                textStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              ),
              ScaleAnimatedText(
                'Then Scale',
                textStyle: TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'),
              ),
            ],
          ),
        ),);
  }

  Center buildLiquidy() {
    return Center(
        child:  SizedBox(
        width: 350.0,
        child: TextLiquidFill(
          text: 'LIQUIDY',
          waveColor: Colors.blueAccent,
          boxBackgroundColor: Colors.redAccent,
          textStyle: TextStyle(
            fontSize: 80.0,
            fontWeight: FontWeight.bold,
          ),
          boxHeight: 300.0,
        ),
      )
      );
  }

  Center buildTyper() {
    return Center(
      child: SizedBox(
        width: 250.0,
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 30.0,
            fontFamily: 'Bobbers',
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('It is not enough to do your best,'),
              TyperAnimatedText('you must know what to do,'),
              TyperAnimatedText('and then do your best'),
              TyperAnimatedText('- W.Edwards Deming'),

            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBox() {
    return SizedBox(
      width: 250.0,
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            FadeAnimatedText('do IT!'),
            FadeAnimatedText('do it RIGHT!!'),
            FadeAnimatedText('do it RIGHT NOW!!!'),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }
}
