import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AnimationDo extends StatelessWidget {
  const AnimationDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlipInY(child: const Square()),
                FlipInX(child: const Square()),
                ElasticInDown(child: const Square()),
                ZoomIn(child: const Square()),
                ZoomOut(child: const Square()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SlideInLeft(child: const Square()),
                BounceInUp(child: const Square()),
                FadeOutUp(child: const Square()),
                JelloIn(child: const Square()),
                BounceInRight(child: const Square()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Swing(child: const Square()),
                Spin(child: const Square()),
                SpinPerfect(child: const Square()),
                Dance(child: const Square()),
                Roulette(child: const Square()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class Square extends StatelessWidget {
  const Square({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.blueAccent,
    );
  }
}