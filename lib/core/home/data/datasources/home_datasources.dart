import 'package:injectable/injectable.dart';
import 'package:pragma/core/common/utils/extension/http.dart';
import 'package:pragma/core/common/utils/extension/string.dart';
import 'package:pragma/core/home/data/models/cat_detail.dart';
import 'package:pragma/core/home/domain/entities/entities.dart';

import '../../../common/services/services.dart';
import '../end_points.dart';
import '../models/cat.dart';

abstract class IHomeDatasource {
  Future<List<CatModel>> getCatList();
  Future<String?> getImageUrl(String url);
  Future<List<CatEntity>> getImageList(List<CatEntity> catList);
  Future<CatDetailModel> getCatDetail(String referenceImageId);
}

@Injectable(as: IHomeDatasource)
class HomeDatasource implements IHomeDatasource {
  HomeDatasource({
    required this.baseClient,
  });

  final BaseClient baseClient;

  @override
  Future<List<CatModel>> getCatList() async {
    try {
      return (await baseClient.get(
        path: EndPoint.breedsApi,
      ))!
          .withListConverter(
        callback: CatModel.fromJson,
      );
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<CatEntity>> getImageList(List<CatEntity> catList) async {
    List<CatEntity> newlist = [];

    for (var element in catList) {
      if (element.referenceImageId != null) {
        final url = await getImageUrl(element.referenceImageId ?? '');

        final edit = element.copyWith(url: url);
        newlist.add(edit);
      } else {
        final empty = element.copyWith(url: '');
        newlist.add(empty);
      }
    }
    return newlist;
  }

  @override
  Future<String?> getImageUrl(String idImages) async {
    Map<String, dynamic> response = (await baseClient.get(
      path: EndPoint.images.toParamUrl(<String, dynamic>{
        'idImages': idImages,
      })!,
    ))!
        .withConverter<Map<String, dynamic>>(
      callback: (Map<String, dynamic> json) => json,
    );
    return response['url'] as String?;
  }

  @override
  Future<CatDetailModel> getCatDetail(String referenceImageId) async {
    try {
      return (await baseClient.get(
        path: EndPoint.images.toParamUrl(<String, String>{
          'idImages': referenceImageId,
        })!,
      ))!
          .withConverter<CatDetailModel>(
        callback: CatDetailModel.fromJson,
      );
    } on Exception catch (_) {
      rethrow;
    }
  }
}
