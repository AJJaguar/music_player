import 'package:flutter/material.dart';

class NeuBox1 extends StatelessWidget {
  final child;
  const NeuBox1({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: const Color(0xffB0BEC5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade700,
              blurRadius: 15,
              offset: const Offset(5, 5),
            ),
            const BoxShadow(
              color: Colors.white,
              blurRadius: 15,
              offset: Offset(-5, -5),
            )
          ]),
      child: Center(child: child),
    );
  }
}

class Space extends StatefulWidget {
  const Space({Key? key}) : super(key: key);

  @override
  State<Space> createState() => _SpaceState();
}

class _SpaceState extends State<Space> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffB0BEC5),
      body: Center(
          child: SizedBox(
        height: 100,
        width: 150,
        child: NeuBox1(
          child: Text(
            'Space',
            style: TextStyle(fontSize: 22),
          ),
        ),
      )),
    );
  }
}
