import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CAROUSAL SLIDER'),
      ),
      body: content(),
    );
  }
  Widget content(){
    return Container(child: 
    CarouselSlider(items: [1,2,3,4,5,].map((i) {
      return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(color: Colors.amber
        ),child: Center(child: Text('page $i')),
      );
    }).toList(),
     options: CarouselOptions()),
    height:300 ,);
  }
}
