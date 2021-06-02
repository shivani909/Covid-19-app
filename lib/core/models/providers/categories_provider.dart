import 'package:flutter/foundation.dart';

import 'categories_data.dart';

class CategoryItems with ChangeNotifier {
  List<Categories> _category = [
    Categories(title: "Medicines", img: "assets/images/027-medicine.png"),
    Categories(
      title: "Hospitals",
      img: "assets/images/043-medical report.png",
    ),
    Categories(
      title: "Oxygen",
      img: "assets/images/026-oxygen.png",
    ),
    Categories(
      title: "Vaccines",
      img: "assets/images/024-vaccine.png",
    ),
    Categories(
      title: "Contact Doctors",
      img: "assets/images/016-doctor.png",
    ),
    Categories(
      title: "Treatment",
      img: "assets/images/010-stethoscope.png",
    ),
    Categories(
      title: "Symptoms",
      img: "assets/images/023-headache.png",
    ),
    Categories(
      title: "Healthy Hygiene",
      img: "assets/images/038-handwash.png",
    ),
    Categories(
      title: "HealthCare",
      img: "assets/images/040-heart beat.png",
    ),
  ];
  List<Categories> get category {
    return [..._category];
  }

  Categories findById(String title) {
    return _category.firstWhere((item) => item.title == title);
  }

  void addCategory() {
    notifyListeners();
  }
}
