import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:nineteen/pages/home.dart';

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
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "The title",
          body: "This is the description",
          image: const Center(child: Icon(Icons.android)),
          footer: ElevatedButton(
            onPressed: () {
              // On button presed
            },
            child: const Text("Let's Go !"),
          ),
          decoration: const PageDecoration(
            pageColor: Colors.green,
            titleTextStyle: TextStyle(color: Colors.orange),
            bodyTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
        ),
        PageViewModel(
          title: "The title2",
          body: "This is the description2",
          image: Center(
            child:
                Image.network("https://domaine.com/image.png", height: 175.0),
          ),
          decoration: const PageDecoration(
            pageColor: Colors.pink,
          ),
        ),
        PageViewModel(
          title: "The title3",
          body: "This is the description3",
          image: Center(
            child:
                Image.network("https://domaine.com/image.png", height: 175.0),
          ),
        ),
      ],
      onDone: () {
        Navigator.push(context, CupertinoPageRoute(builder: (_) => HomePage()));
      },
      showDoneButton: true,
      done: Text('Done'),
      showNextButton: true,
      next: Text('Next'),
      showSkipButton: true,
      skip: Text('Skip'),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Colors.blue,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
    );
  }
}
