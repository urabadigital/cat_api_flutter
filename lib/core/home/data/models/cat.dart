import 'package:pragma/core/home/domain/entities/weight.dart';

import '../../domain/entities/entities.dart';

class CatModel extends CatEntity {
  const CatModel({
    super.weight,
    super.id,
    super.name,
    super.origin,
    super.countryCodes,
    super.countryCode,
    super.description,
    super.lifeSpan,
    super.intelligence,
    super.adaptability,
    super.url,
    super.referenceImageId,
  });

  factory CatModel.fromJson(Map<String, dynamic> json) => CatModel(
        weight: Weight.fromJson(json['weight']),
        id: json['id'],
        name: json['name'],
        // cfaUrl: json['cfa_url'],
        // vetstreetUrl: json['vetstreet_url'],
        // vcahospitalsUrl: json['vcahospitals_url'],
        // temperament: json['temperament'],
        origin: json['origin'],
        countryCodes: json['country_codes'],
        countryCode: json['country_code'],
        description: json['description'],
        lifeSpan: json['life_span'],
        // indoor: json['indoor'],
        // lap: json['lap'],
        // altNames: json['alt_names'],
        adaptability: json['adaptability'],
        // affectionLevel: json['affection_level'],
        // childFriendly: json['child_friendly'],
        // dogFriendly: json['dog_friendly'],
        // energyLevel: json['energy_level'],
        // grooming: json['grooming'],
        // healthIssues: json['health_issues'],
        intelligence: json['intelligence'],
        // sheddingLevel: json['shedding_level'],
        // socialNeeds: json['social_needs'],
        // strangerFriendly: json['stranger_friendly'],
        // vocalisation: json['vocalisation'],
        // experimental: json['experimental'],
        // hairless: json['hairless'],
        // natural: json['natural'],
        // rare: json['rare'],
        // rex: json['rex'],
        // suppressedTail: json['suppressed_tail'],
        // shortLegs: json['short_legs'],
        // wikipediaUrl: json['wikipedia_url'],
        // hypoallergenic: json['hypoallergenic'],
        referenceImageId: json['reference_image_id'],
        url: json['url'],
      );
}

extension CastMapper on CatModel {
  CatEntity toEntitie() {
    return CatEntity(
      weight: weight,
      id: id,
      name: name,
      origin: origin,
      countryCode: countryCode,
      countryCodes: countryCodes,
      description: description,
      adaptability: adaptability,
      lifeSpan: lifeSpan,
      intelligence: intelligence,
      url: url,
      referenceImageId: referenceImageId,
    );
  }
}
