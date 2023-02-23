// ignore_for_file: camel_case_types, must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

class textContent extends StatelessWidget {
  String title;
  String description;
  textContent(this.title, this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
                text: title,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: description)
          ]),
    );
  }
}

class NewsContent extends StatelessWidget {
  String title;
  String descript;
  String image;
  String url;
  NewsContent(this.title, this.descript, this.image, {super.key, this.url = ''});

  openBrowserTab() async {
    FlutterWebBrowser.openWebPage(
        url: url,
        customTabsOptions: const CustomTabsOptions(
          colorScheme: CustomTabsColorScheme.dark,
          toolbarColor: Colors.white,
          secondaryToolbarColor: Colors.white,
          navigationBarColor: Colors.white,
          addDefaultShareMenuItem: true,
          instantAppsEnabled: true,
          showTitle: true,
          urlBarHidingEnabled: true,
        ));
  }

  @override
  Widget build(BuildContext context) => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  image,
                  // color: Colors.black,
                  // colorBlendMode: BlendMode.overlay,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                descript,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  child: const Text('Ver noticia'),
                  onPressed: () {
                    openBrowserTab();
                  },
                ),
              ],
            )
          ],
        ),
      );
}
