// ignore_for_file: file_names

import 'package:wisdom_and_wellness/widgets/widgets_imports.dart';

class DailyChallengeController extends GetxController {
  List user = [
    {
      "type": "Daily",
    },
    {
      "type": "Weekly",
    },
    {
      "type": "Monthly",
    },
  ];

  var selectedIndex = 0.obs;

  void updateIndex(int index) {
    selectedIndex.value = index;
  }
}
