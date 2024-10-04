import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const Jamesrahhh());
}

class Jamesrahhh extends StatelessWidget {
  const Jamesrahhh({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'jamesrahhh.dev',
      theme: ThemeData(
          textTheme: Typography.blackMountainView, useMaterial3: true),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        const Text('@jamesrahhh',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 15,
                decoration: TextDecoration.none,
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontVariations: <FontVariation>[FontVariation('wght', 700)])),
        const FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            'coming soon.',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 100,
                decoration: TextDecoration.none,
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontVariations: <FontVariation>[FontVariation('wght', 700)]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <GestureDetector>[
            GestureDetector(
                onTap: () => launchUrl(Uri.https('github.com', 'jamesrahhh')),
                child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.black,
                      size: 25,
                    ))),
            GestureDetector(
                onTap: () =>
                    launchUrl(Uri.https('instagram.com', 'jamesrahhh')),
                child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.black,
                      size: 25,
                    )))
          ],
        )
      ]),
      Align(
          alignment: Alignment.bottomRight,
          child: GestureDetector(
            onTap: () => showLicensePage(context: context),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.info_outline, color: Colors.black),
            ),
          ))
    ]);
  }
}
