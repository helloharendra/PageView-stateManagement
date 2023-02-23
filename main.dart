import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(leading: Icon(Icons.menu),
          title: Text('PageView'),
        ),
        body: MyPageView(),
      ),
    );
  }
}

class MyPageView extends StatelessWidget {
  const MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      controller: controller,
      children: <Widget>[
        Center(
          child: Image.asset(
              '/Users/iphtech30/Desktop/test/flutter/images/game.jpeg'),
        ),
        Center(
          child: Image.asset(
              '/Users/iphtech30/Desktop/test/flutter/images/game.webp'),
        ),
        Center(
          child: Image.asset(
              '/Users/iphtech30/Desktop/test/flutter/images/img.jpeg'),
        ),
        Center(
          child: Image.asset(
              '/Users/iphtech30/Desktop/test/flutter/images/iph.png'),
        ),
        Center(
          child: Image.asset(
            '/Users/iphtech30/Desktop/test/flutter/images/flutter_logo.png',
          ),
        )
      ],
    );
  }
}
