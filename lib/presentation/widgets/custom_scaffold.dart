import 'package:flutter/material.dart';
import 'package:open_fashion/core/theme/colors_guide.dart';

class CustomScaffold extends StatelessWidget {
  final Widget? body;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  const CustomScaffold({
    Key? key,
    this.body,
    this.appBar,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      appBar: appBar,
      backgroundColor: ColorsGuide.inputBackground,
      floatingActionButton: floatingActionButton,
      //backgroundColor: ColorsGuide.barBackground,
    );
  }
}
