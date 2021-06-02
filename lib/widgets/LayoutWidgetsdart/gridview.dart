import 'package:covid_app/core/models/providers/categories_provider.dart';
import 'package:covid_app/widgets/LayoutWidgetsdart/gridtile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoryData = Provider.of<CategoryItems>(context);
    final categoryItems = categoryData.category;
    return Column(children: [
      GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        itemCount: categoryItems.length,
        itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
          value: categoryItems[index],
          child: CategoryTiles(),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 54 / 56,
          crossAxisCount: 2,
          crossAxisSpacing: 28,
          mainAxisSpacing: 25,
        ),
      )
    ]);
  }
}
