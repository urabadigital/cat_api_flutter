import 'package:injectable/injectable.dart';
import 'package:pragma/core/common/utils/extension/http.dart';
import 'package:pragma/core/common/utils/extension/string.dart';

import '../../../common/services/services.dart';
import '../end_points.dart';
import '../models/cat.dart';

abstract class IHomeDatasource {
  Future<List<CatModel>> getCatList();
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
      List<CatModel> catList = (await baseClient.get(
        path: EndPoint.breedsApi,
      ))!
          .withListConverter(
        callback: CatModel.fromJson,
      );

      List<CatModel> newlist = [];

      for (var element in catList) {
        if (element.referenceImageId != null) {
          final url = await _getImageUrl(element.referenceImageId ?? '');
          final edit = element.copyWith(url: url);
          newlist.add(edit);
        } else {
          newlist.add(element);
        }
      }
      return newlist;
    } on Exception catch (_) {
      rethrow;
    }
  }

  Future<String?> _getImageUrl(String idImages) async {
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

  // @override
  // Future<DetailModel> getMovieDetail(String id) async {
  //   try {
  //     Map<String, dynamic> response = (await baseClient.get(
  //             path: EndPoint.detailMovieApi.toParamUrl(<String, String>{
  //       'id': id,
  //     })!))!
  //         .withConverter<Map<String, dynamic>>(
  //       callback: (Map<String, dynamic> json) => json,
  //     );
  //     response.addAll({
  //       'youtube_id': await getYoutubeId(id),
  //     });

  //     return DetailModel.fromJson(response);
  //   } on Exception catch (_) {
  //     rethrow;
  //   }
  // }

  // Future<String?> getYoutubeId(String id) async {
  //   try {
  //     Map<String, dynamic> response = (await baseClient.get(
  //       path: EndPoint.detailMovieApiVideos.toParamUrl(<String, String>{
  //         'id': id,
  //       })!,
  //     ))!
  //         .withConverter<Map<String, dynamic>>(
  //       callback: (Map<String, dynamic> json) => json,
  //     );

  //     return response['results'][0]['key'] as String?;
  //   } on Exception catch (_) {
  //     rethrow;
  //   }
  // }
}
