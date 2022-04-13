import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {

  final String butonText;
  final Widget icon;
  final Function onPressed;

  const ContactButton({
    Key? key, required this.butonText, required this.icon, required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(
            color: Colors.black12
          ),
          backgroundColor: Colors.amberAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0)
          )
        ),
        onPressed: onPressed(),
        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: icon,
        ),
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(butonText,
          style: const TextStyle(color: Colors.black54),),
        )),
    );
  }
}