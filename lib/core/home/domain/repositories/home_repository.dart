import 'package:either_dart/either.dart';
import 'package:pragma/core/home/data/models/cat_detail.dart';

import '../../../common/error/error.dart';
import '../entities/entities.dart';

abstract class IHomeRepository {
  Future<Either<Failure, List<CatEntity>>> getCatList();
  Future<Either<Failure, List<CatEntity>>> getImageList(
    List<CatEntity> catList,
  );
  Future<Either<Failure, String>> getImageUrl(String referenceImageId);
  Future<Either<Failure, CatDetailModel>> getCatDetail(String referenceImageId);
}
