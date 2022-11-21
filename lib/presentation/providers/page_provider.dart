// import 'package:flutter/cupertino.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// final pageChangerProvider = ChangeNotifierProvider<PageChangerProvider>(
//   ((ref) => PageChangerProvider()),
// );
//
// class PageChangerProvider extends ChangeNotifier {
//   final PageController pageController = PageController(initialPage: 0);
//   int currantCnt = 0;
//
//   int get cnt => currantCnt;
//
//   changeStatus(int count) {
//     debugPrint(count.toString());
//     currantCnt = count;
//     notifyListeners();
//   }
// }
