import 'package:covid_app/Screens/dashboard.dart';
import 'package:covid_app/Screens/splash_screen.dart';
import 'package:covid_app/constants/colors.dart';
import 'package:covid_app/core/models/providers/categories_data.dart';
import 'package:covid_app/core/models/providers/categories_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => CategoryItems(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: AppColor.primaryColor,
            accentColor: Colors.teal,
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                .copyWith(
                    headline1: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline1))),
        home: Dashboard(),
      ),
    );
  }
}
