import 'package:flutter_easyloading/flutter_easyloading.dart';

mixin StoreMixin {
  void showProgress({String message = "Loading..."}) {
    try {
      hideProgress();
      EasyLoading.show(status: message);
    } catch (e) {
      print(e);
    }
  }

  void hideProgress() {
    try {
      EasyLoading.dismiss();
    } catch (e) {
      print(e);
    }
  }

  void showError({String message = "Something went wrong..."}) {
    try {
      hideProgress();
      EasyLoading.showError(message, duration: Duration(milliseconds: 2000));
    } catch (e) {
      print(e);
    }
  }

  void showSuccess({String message = "Done"}) {
    try {
      hideProgress();
      EasyLoading.showSuccess(message, duration: Duration(milliseconds: 2000));
    } catch (e) {
      print(e);
    }
  }
}
