import 'package:flutter/foundation.dart';

class DashboardItems with ChangeNotifier {
  final String oxyfen;
  bool isTapped;

  DashboardItems(
    this.oxyfen, {
    this.isTapped = false,
  });

  void toggleNotificationBellStatus() {
    isTapped = !isTapped;
    notifyListeners();
  }
}
