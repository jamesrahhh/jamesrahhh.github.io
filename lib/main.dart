import 'package:flex_color_scheme/flex_color_scheme.dart';
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
      theme: FlexThemeData.light(
        textTheme: const TextTheme(
          displaySmall: TextStyle(
              fontSize: 15,
              fontVariations: <FontVariation>[FontVariation('wght', 800)]),
          displayMedium: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 800)]),
          displayLarge: TextStyle(
              fontSize: 100,
              fontVariations: <FontVariation>[FontVariation('wght', 800)]),
          headlineSmall: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 700)]),
          headlineMedium: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 700)]),
          headlineLarge: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 700)]),
          titleSmall: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 600)]),
          titleMedium: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 600)]),
          titleLarge: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 600)]),
          bodySmall: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 400)]),
          bodyMedium: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 400)]),
          bodyLarge: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 400)]),
        ).apply(
          bodyColor: Colors.black,
          displayColor: Colors.black,
        ),
        colors: const FlexSchemeColor(
          primary: Colors.black,
          primaryContainer: Colors.black,
          secondary: Colors.black,
          secondaryContainer: Colors.black,
          tertiary: Colors.black,
          tertiaryContainer: Colors.white,
          error: Colors.red,
          errorContainer: Colors.white,
        ),
        fontFamily: 'Montserrat',
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text('@jamesrahhh',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.displaySmall),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'coming soon.',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.displayLarge,
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
      ]),
    );
  }
}
