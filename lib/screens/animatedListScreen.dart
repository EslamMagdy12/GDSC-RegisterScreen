import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimatedListScreen extends StatelessWidget {
  const AnimatedListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: AnimationLimiter(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              delay: Duration(milliseconds: 200),
              child: SlideAnimation(
                duration: Duration(milliseconds: 2500),
                curve: Curves.fastLinearToSlowEaseIn,
                horizontalOffset: -300,
                verticalOffset: -850,
                child: Container(
                  height: height / 10,
                  width: width / 9,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ]),
                ),
              ),
            );
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
