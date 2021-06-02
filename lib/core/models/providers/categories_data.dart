import 'package:covid_app/core/models/hospital_model.dart';
import 'package:flutter/foundation.dart';

class Categories with ChangeNotifier {
  final String title;
  final String img;

  Categories({@required this.title, @required this.img});

  void listners() {
    notifyListeners();
  }
}
