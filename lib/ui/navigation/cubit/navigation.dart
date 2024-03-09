import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma/core/home/domain/entities/entities.dart';

// import '../../../../ui/home/view/movie_detail_view.dart';
import 'router_manager.dart';

class HomeNavigation extends Cubit<void> {
  HomeNavigation({required this.navigation}) : super(null);
  late RouterManager navigation;

  void pop() {
    navigation.pop();
  }

  void navigateCatDetails(String route, {required CatEntity cat}) {
    navigation.push(route, extra: cat);
    // navigation.goNamed(route, pathParams: {'id': referenceImageId});
  }
}
