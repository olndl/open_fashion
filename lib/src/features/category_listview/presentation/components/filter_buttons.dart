import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';

class FilterButtons extends StatelessWidget {
  const FilterButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Chip(
          labelPadding: EdgeInsets.all(2.0),
          avatar: CircleAvatar(
            backgroundColor: Colors.white70,
            child: Text('new'.toUpperCase()),
          ),
          label: Text(
            'label',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: ColorsGuide.placeholder,
          elevation: 6.0,
          shadowColor: Colors.grey[60],
          padding: EdgeInsets.all(8.0),
        ),
        Chip(
          labelPadding: EdgeInsets.all(2.0),
          avatar: CircleAvatar(
            backgroundColor: Colors.white70,
            child: Text('new'.toUpperCase()),
          ),
          label: Text(
            'label',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: ColorsGuide.placeholder,
          elevation: 6.0,
          shadowColor: Colors.grey[60],
          padding: EdgeInsets.all(8.0),
        ),
      ],
    );
  }
}
