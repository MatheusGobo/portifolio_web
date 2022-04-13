import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: const Color(0XFFFBEFD9),
          child: Row(
            children: [
              TextButton.icon(
                onPressed: () => _launchURL('https://facebook.com'),
                icon: Image.asset('images/social/facebook.png', width: 15, height: 15,),
                label: const Text('')
              ),
              TextButton.icon(
                onPressed: () => _launchURL('https://instagram.com'),
                icon: Image.asset('images/social/instagram.png', width: 15, height: 15,),
                label: const Text('')
              ),
              TextButton.icon(
                onPressed: () => _launchURL('https://twitter.com'),
                icon: Image.asset('images/social/twitter.png', width: 15, height: 15,),
                label: const Text('')
              ),
            ]
          ),
        )
      ],
    );
  }

  void _launchURL(String url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}
}