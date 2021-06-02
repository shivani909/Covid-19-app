import 'package:covid_app/core/models/dashboard_model.dart';
import 'package:provider/provider.dart';

import '../constants/values.dart';
import '../utils/extensions/store_mixin.dart';
import '../widgets/base/base_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T>
    with BaseWidgets, StoreMixin {
  int _currentIndex = 0;
  String pageTitle() {
    return "New Delhi";
  }

  String appBarImg = "assets/logo/mask.png";

  Widget getFloatingActionButton() => InkWell(
        onTap: () {},
        child: Container(
          height: 45,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            shape: BoxShape.rectangle,
            color: Colors.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.call,
                color: Colors.white,
              ),
              Text(
                "Call Helpline",
                style:
                    GoogleFonts.montserrat(fontSize: 16, color: Colors.white),
              )
            ],
          ),
        ),
      );

  @override
  BuildContext getContext();

  EdgeInsets containerPadding() => EdgeInsets.all(8);

  Color getBackgroundColor() => AppColor.primaryColor;

  Widget getBottomNavigation() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      selectedItemColor: AppColor.iconColor,
      unselectedLabelStyle:
          BaseStyles.navigationTextStyle.copyWith(fontSize: 10),
      selectedLabelStyle: BaseStyles.navigationTextStyle.copyWith(fontSize: 12),
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: AppColor.accentText,
            ),
            activeIcon: Icon(
              Icons.home_filled,
              size: 27,
              color: AppColor.iconColor,
            ),
            label: TabTitle.HOME),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.local_hospital,
              color: AppColor.accentText,
            ),
            activeIcon: Icon(
              Icons.local_hospital,
              size: 27,
              color: AppColor.iconColor,
            ),
            label: TabTitle.HOSPITALS),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.medical_services,
              color: AppColor.accentText,
            ),
            activeIcon: Icon(
              Icons.medical_services,
              size: 27,
              color: AppColor.iconColor,
            ),
            label: TabTitle.SAFETY),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.article,
              color: AppColor.accentText,
            ),
            activeIcon: Icon(
              Icons.article,
              size: 27,
              color: AppColor.iconColor,
            ),
            label: TabTitle.NEWS),
      ],
    );
  }

  AppBar getDashboardAppBar() {
    bool isTapped = false;
    return AppBar(
      iconTheme: IconTheme.of(context).copyWith(color: AppColor.buttonColor),
      title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          Icons.location_on,
          size: 17,
          color: Colors.teal,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          "New Delhi",
          style: BaseStyles.appTitleTextStyle,
        ),
        const SizedBox(
          width: 2,
        ),
        Icon(
          Icons.expand_more,
          size: 17,
          color: Colors.teal,
        )
      ]),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              isTapped ? Icons.notifications : Icons.notifications_none,
            ))
      ],
      elevation: 0,
      centerTitle: true,
      backgroundColor:
          pageTitle().isEmpty ? AppColor.primaryColor : AppColor.primaryColor,
    );
  }
}
