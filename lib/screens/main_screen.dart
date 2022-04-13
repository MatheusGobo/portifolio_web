import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portifolio_web/utils/util.dart';
import '../widgets/widgets.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 9, bottom: 9),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                foregroundImage: NetworkImage('https://avatars.githubusercontent.com/u/43304220?s=400&u=2f72b52c03c63a52ddffa40bc68a99cdc68211b2&v=4')//NetworkImage('https://picsum.photos/200'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Matheus',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic),
              ),
            ),
          ],
          ),
          actions: [
            ContactButton(
              butonText: 'Contact me',
              icon: const Icon(Icons.send_sharp),
              onPressed: () {
                launchMailto();
              }
            )
          ],
      ),
      body: Stack(
        children: [
          Body(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(100.0),
              child: SizedBox(
                height: 59,
                child: ButtonRow()
              )
            )
          )
        ],
      ),
    );
  }
}

