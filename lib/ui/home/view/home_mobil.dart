import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma/ui/home/bloc/home_bloc.dart';
import 'package:pragma/ui/home/widget/cat_list_view.dart';
import 'package:pragma/ui/home/widget/movies_search_bar.dart';

class HomeMobil extends StatelessWidget {
  const HomeMobil({super.key});

  @override
  Widget build(BuildContext context) {
    final catList = context.watch<HomeBloc>().state.cat;
    return Scaffold(
      body: Column(
        children: <Widget>[
          const MoviesSearchBar(),
          CatListView(cats: catList),
        ],
      ),
    );
  }
}
