import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter imageholder demo'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Static image'),
              Image.network(
                'https://picsum.photos/250?image=9',
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Text('GIF'),
              Image.network(
                'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
