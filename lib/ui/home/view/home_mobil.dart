import 'package:flutter/material.dart';
import 'package:pragma/ui/home/widget/cat_list_view.dart';
import 'package:pragma/ui/home/widget/cat_search_bar.dart';

class HomeMobil extends StatelessWidget {
  const HomeMobil({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        CatSearchBar(),
        CatListView(),
      ],
    );
  }
}
