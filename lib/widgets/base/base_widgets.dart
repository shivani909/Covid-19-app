import 'package:covid_app/constants/colors.dart';
import 'package:covid_app/constants/strings.dart';
import 'package:covid_app/constants/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mixin BaseWidgets {
  BuildContext modelContext;

  AppBar getEmptyAppBar() => null;

  Drawer getDrawer() {
    final drawerHeader = UserAccountsDrawerHeader(
      decoration: BoxDecoration(color: Colors.blue),
      accountName: Text(
        "Lisa Hermon",
        style: GoogleFonts.poppins(
          fontSize: 19,
          color: Colors.black,
        ),
      ),
      accountEmail: Text(
        "lisahermon03@gmail.com",
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      currentAccountPicture: ClipOval(
        child: Image.network(
          "https://images.unsplash.com/photo-1508204444-a2df673be7d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80",
          fit: BoxFit.cover,
        ),
      ),
    );

    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          selectedTileColor: AppColor.buttonColor,
          title: Text(
            Titles.HELPLINE_MESSAGE,
            style: GoogleFonts.poppins(fontSize: 15, color: Colors.black),
          ),
          leading: const Icon(
            Icons.call,
            color: Colors.black,
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            "Donate",
            style: GoogleFonts.poppins(fontSize: 15, color: Colors.black),
          ),
          leading: const Icon(
            Icons.favorite_rounded,
            color: Colors.black,
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            "Rate this App",
            style: GoogleFonts.poppins(fontSize: 15, color: Colors.black),
          ),
          leading: const Icon(
            Icons.thumb_up_off_alt,
            color: Colors.black,
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            "Help and Feedback",
            style: GoogleFonts.poppins(fontSize: 15, color: Colors.black),
          ),
          leading: const Icon(
            Icons.help_outline,
            color: Colors.black,
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            "Sign Out",
            style: GoogleFonts.poppins(fontSize: 15, color: Colors.black),
          ),
          leading: const Icon(
            Icons.logout,
            color: Colors.black,
          ),
          onTap: () {},
        ),
      ],
    );
    return Drawer(
      child: drawerItems,
    );
  }
}

AppBar getSimpleAppBar(String title) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title,
      style: BaseStyles.appTitleTextStyle,
    ),
    elevation: 0,
    backgroundColor: AppColor.primaryColor,
    actions: [IconButton(icon: Icon(Icons.more_vert), onPressed: () {})],
  );
}
