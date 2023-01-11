import 'package:flutter/cupertino.dart';

class Counter extends StatelessWidget {
  final int numberOfProducts;
  const Counter({Key? key, required this.numberOfProducts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text('$numberOfProducts'), const Text('Apparel')],
    );
  }
}
