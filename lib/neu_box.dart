import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;
  const NeuBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                //top shadow
                color: Colors.grey.shade500,
                offset: const Offset(5, 5),
                blurRadius: 15,
              ),
              const BoxShadow(
                //light shadow
                color: Colors.white,
                offset: Offset(-5, -5),
                blurRadius: 15,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: child),
        ));
  }
}
