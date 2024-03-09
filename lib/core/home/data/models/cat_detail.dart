import 'package:pragma/core/home/data/models/cat.dart';

class CatDetailModel extends CatModel {
  const CatDetailModel({
    super.id,
    super.url,
    this.breeds,
  });

  final List<CatModel>? breeds;

  factory CatDetailModel.fromJson(Map<String, dynamic> json) => CatDetailModel(
        id: json['id'],
        url: json['url'],
        breeds: List<CatModel>.from(
          json['breeds'].map((x) => CatModel.fromJson(x)),
        ),
      );
  factory CatDetailModel.empty() => const CatDetailModel();
}

extension CastMapper on CatDetailModel {
  CatDetailModel toEntitie() {
    return CatDetailModel(
      id: id,
      url: url,
      breeds: breeds,
    );
  }
}
