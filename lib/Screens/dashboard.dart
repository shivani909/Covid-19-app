import 'dart:ui';

import 'package:covid_app/constants/values.dart';
import 'package:covid_app/core/models/dashboard_model.dart';
import 'package:covid_app/widgets/LayoutWidgetsdart/gridview.dart';
import 'package:covid_app/widgets/base_state.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/widgets/base/base_widgets.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends BaseState<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getDashboardAppBar(),
      backgroundColor: AppColor.primaryColor,
      //floatingActionButton: getFloatingActionButton(),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: getBottomNavigation(),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.deepPurple[2],
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: getDashboardWidget(),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Titles.GRID_HEADING,
                  style: BaseStyles.gridHeadingTextStyle,
                )),
          ),
          CategoriesGrid()
        ]),
      ),
      drawer: Drawer(
        child: getDrawer(),
      ),
    );
  }

  Widget getDashboardWidget() {
    return Row(children: [
      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(Titles.RECOVERY_MESSAGE, style: BaseStyles.headingTextStyle),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text(
            Titles.INFO,
            style: BaseStyles.subHeadingTextStyle,
          ),
          Icon(
            Icons.arrow_forward,
            color: AppColor.iconColor,
            size: 10,
          )
        ]),
      ]),
      const SizedBox(
        width: 30,
      ),
      Expanded(
        child: Container(
          child: Image.asset(
            "assets/images/fight_covid.jpg",
          ),
        ),
      ),
    ]);
  }

  @override
  BuildContext getContext() => context;
}
