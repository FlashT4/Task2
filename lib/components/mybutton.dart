import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final String rout;

  const MyButton({super.key, required this.text, required this.rout});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: () {
            Navigator.pushNamed(context, '/$rout');
          },
          child: Text(text),
        ),
      ),
    );
  }
}
