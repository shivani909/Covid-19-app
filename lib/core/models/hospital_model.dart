import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class Hospitals {
  final String name;
  final String imgUrl;
  String description;
  final String location;
  String recoveryRate;
  bool isAvailable;

  Hospitals({
    @required this.name,
    this.imgUrl,
    this.description,
    this.location,
    this.recoveryRate,
    this.isAvailable,
  });

  factory Hospitals.fromMap(Map data) {
    if (data == null) {
      return null;
    }
    data = data ?? {};
    var hospitals = Hospitals(
      name: data['name'] as String,
      imgUrl: data['imgUrl'] as String,
      description: data['description'] as String,
      location: data['location'] as String,
      recoveryRate: data['recoveryRate'] as String,
      isAvailable: data['isAvailable'] as bool,
    );
    return hospitals;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['name'] = name;
    data['imgUrl'] = imgUrl;
    data['description'] = description;
    data['location'] = location;
    data['recoveryRate'] = recoveryRate;
    data['isAvailable'] = isAvailable;

    return data;
  }

  Map<String, dynamic> toCustomJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
  }

  factory Hospitals.fromSnapshot(DocumentSnapshot snapshot) {
    var data = snapshot.data() ?? {};
    if (data.isEmpty) {
      return null;
    }
    data = data ?? {};
    var hospitals = Hospitals(
      name: data['name'] as String,
      imgUrl: data['imgUrl'] as String,
      description: data['description'] as String,
      location: data['location'] as String,
      recoveryRate: data['recoveryRate'] as String,
      isAvailable: data['isAvailable'] as bool,
    );
    return hospitals;
  }
}
