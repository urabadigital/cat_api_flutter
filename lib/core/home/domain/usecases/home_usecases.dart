import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:pragma/core/home/data/models/cat_detail.dart';

import '../../../common/error/error.dart';
import '../entities/entities.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class HomeUseCase {
  HomeUseCase(this.homeRepository);
  final IHomeRepository homeRepository;

  Future<Either<Failure, List<CatEntity>>> getCatList() async {
    return homeRepository.getCatList();
  }

  Future<Either<Failure, String>> getImageUrl(String referenceImageId) async {
    return homeRepository.getImageUrl(referenceImageId);
  }

  Future<Either<Failure, List<CatEntity>>> getImageList(
      List<CatEntity> catList) async {
    return homeRepository.getImageList(catList);
  }

  Future<Either<Failure, CatDetailModel>> getCatDetail(
      String referenceImageId) async {
    return homeRepository.getCatDetail(referenceImageId);
  }
}
