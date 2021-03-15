import 'package:animated_meter/progress_bar.dart';
import 'package:flutter/material.dart';

import 'animated_polygon_paint.dart';
import 'circle_paint.dart';
import 'line_paint.dart';
import 'polygon_paint.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          '/linePaint': (context) => LinePainter(),
          '/circlePaint': (context) => CirclePainter(),
          '/polygonPaint': (context) => PolygonPainter(),
          '/animatedPolygonPaint': (context) => AnimatedPolygonPainter(),
          '/renderBoxProgressBar': (context) => ProgressRenderBar(),
        },
        home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/linePaint');
                },
                title: Center(child: Text('Line Paint')),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/circlePaint');
                },
                title: Center(child: Text('Circle Paint')),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/polygonPaint');
                },
                title: Center(child: Text('Polygon Paint')),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/animatedPolygonPaint');
                },
                title: Center(child: Text('Animated Polygon Paint')),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/renderBoxProgressBar');
                },
                title: Center(child: Text('RenderBox ProgressBar')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
