import 'package:covid_app/constants/values.dart';
import 'package:covid_app/core/models/providers/categories_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryTiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final item = Provider.of<Categories>(context);
    return InkWell(
      splashColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
      highlightColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColor.primaryColor,
            boxShadow: [
              BoxShadow(
                  color: Color(0xFF000000).withAlpha(15),
                  blurRadius: 24,
                  offset: Offset(0, 8))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: GridTile(
            child: Center(
              child: Image.asset(
                item.img,

                height: 50,
                width: 55,
                // )),
              ),
            ),
            footer: Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(item.title),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
