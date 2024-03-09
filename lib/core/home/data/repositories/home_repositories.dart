import 'dart:developer';

import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:pragma/core/home/data/models/cat_detail.dart';

import '../../../common/error/error.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_datasources.dart';
import '../models/cat.dart';

@Injectable(as: IHomeRepository)
class HomeRepositoryImpl implements IHomeRepository {
  HomeRepositoryImpl(this.homeDatasource);
  final IHomeDatasource homeDatasource;

  @override
  Future<Either<Failure, List<CatEntity>>> getCatList() async {
    try {
      final List<CatModel> casts = await homeDatasource.getCatList();
      final List<CatEntity> list = casts.map((e) => e.toEntitie()).toList();
      return Right(list);
    } on BaseClientException catch (e) {
      log(e.toString());
      if (e.type == 'SocketException') {
        return const Left(NetworkFailure());
      }
      if (e.type == 'TimeoutException') {
        return const Left(TimeOutFailure());
      }
      if (e.type == 'UnAuthorization') {
        return const Left(AuthFailure());
      }
      return const Left(AnotherFailure());
    } catch (e) {
      log(e.toString());
      return const Left(AnotherFailure());
    }
  }

  @override
  Future<Either<Failure, List<CatEntity>>> getImageList(
      List<CatEntity> catList) async {
    try {
      final List<CatEntity> list = await homeDatasource.getImageList(catList);
      return Right(list);
    } on BaseClientException catch (e) {
      log(e.toString());
      if (e.type == 'SocketException') {
        return const Left(NetworkFailure());
      }
      if (e.type == 'TimeoutException') {
        return const Left(TimeOutFailure());
      }
      if (e.type == 'UnAuthorization') {
        return const Left(AuthFailure());
      }
      return const Left(AnotherFailure());
    } catch (e) {
      log(e.toString());
      return const Left(AnotherFailure());
    }
  }

  @override
  Future<Either<Failure, CatDetailModel>> getCatDetail(
      String referenceImageId) async {
    try {
      final CatDetailModel catDetail =
          await homeDatasource.getCatDetail(referenceImageId);
      return Right(catDetail.toEntitie());
    } on BaseClientException catch (e) {
      log(e.toString());
      if (e.type == 'DataNull') {
        return Left(DataNull());
      }
      if (e.type == 'SocketException') {
        return const Left(NetworkFailure());
      }
      if (e.type == 'TimeoutException') {
        return const Left(TimeOutFailure());
      }
      if (e.type == 'UnAuthorization') {
        return const Left(AuthFailure());
      }
      return const Left(AnotherFailure());
    } catch (e) {
      log(e.toString());
      return const Left(AnotherFailure());
    }
  }
}
