import 'package:flutter/material.dart';
import 'package:open_fashion/src/core/constants/interface.dart';
import 'package:open_fashion/src/core/extensions/extensions.dart';
import 'package:open_fashion/src/core/theme/colors_guide.dart';
import 'package:open_fashion/src/core/theme/typography.dart';

class ErrorDialog extends StatelessWidget {
  final String mainText;

  const ErrorDialog({Key? key, required this.mainText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsGuide.inputBackground,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(5.percentOfWidth),
              child: Icon(
                Icons.crisis_alert,
                color: ColorsGuide.secondary,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.percentOfHeight),
            child: Text(
              mainText,
              style: TextStyles.bodyS.copyWith(color: ColorsGuide.titleActive),
            ),
          ),
          SizedBox(
            height: 1.percentOfHeight,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5.percentOfHeight),
              decoration: BoxDecoration(
                color: ColorsGuide.offWhite,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    Interface.okButton,
                    style: TextStyles.bodyS.copyWith(
                      color: ColorsGuide.titleActive,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Future showErrorDialog(BuildContext context, String text) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.only(top: 1.percentOfHeight),
          content: ErrorDialog(
            mainText: text,
          ),
        );
      },
    );
  }
}
