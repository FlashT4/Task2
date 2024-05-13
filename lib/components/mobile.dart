import 'package:flutter/material.dart';

class Mobile extends StatelessWidget {
  final String path;
  final String title;
  final String price;

  const Mobile({
    super.key,
    required this.path,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 230, 229, 227),
        border: Border.all(color: Colors.grey, width: 3),
      ),
      // color: Colors.amber,
      child: ListTile(
        hoverColor: Colors.white,
        leading: Image.asset(path),
        title: Text(title, style: const TextStyle(fontSize: 25)),
        subtitle: Text(price, style: const TextStyle(fontSize: 16)),
        trailing: const Text(
          'for more',
          style: TextStyle(color: Colors.blue, fontSize: 15),
        ),
      ),
    );
  }
}
