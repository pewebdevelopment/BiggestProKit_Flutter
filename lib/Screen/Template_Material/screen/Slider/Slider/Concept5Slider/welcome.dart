import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
List<Color> list = [Colors.yellow, Colors.green, Colors.blue];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Welcome extends StatelessWidget {
  final List<String> images = [
    'assets/images/nft/1.jpg',
    'assets/images/nft/2.jpg',
    'assets/images/nft/3.jpg',
    'assets/images/nft/4.jpg'
  ];

  final List<String> titles = [
    'Welcome',
    'Simple to use',
    'Easy parallax',
    'Customizable'
  ];
  final List<String> subtitles = [
    'Flutter TransformerPageView, for welcome screen, banner, image catalog and more',
    'Simple api,easy to understand,powerful adn strong',
    'Create parallax by a few lines of code',
    'Highly customizable, the only boundary is our mind. :)'
  ];

  final List<Color> backgroundColors = [
    const Color(0xffF67904),
    const Color(0xffD12D2E),
    const Color(0xff7A1EA1),
    const Color(0xff1773CF)
  ];

  final int index;

  Welcome(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TransformerPageView(
      index: index,
      transformer: PageTransformerBuilder(
        builder: (Widget child, TransformInfo info) {
          //  print('==========');
          return ParallaxColor(
            colors: backgroundColors,
            info: info,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ParallaxContainer(
                    position: info.position!,
                    translationFactor: 400.0,
                    child: Image.asset(images[info.index!]),
                  ),
                ),
                ParallaxContainer(
                  position: info.position!,
                  child: Text(
                    titles[info.index!],
                    style: const TextStyle(fontSize: 30.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                ParallaxContainer(
                  position: info.position!,
                  translationFactor: 50.0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 50.0),
                    child: Text(
                      subtitles[info.index!],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      itemCount: 4,
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Welcome(index),
          ),
//          new ElevatedButton(onPressed: () {
//            this.setState(() {
//              index++;
//              if (index > 3) {
//                index = 0;
//              }
//            });
//          })
        ],
      ),
    );
  }
}
