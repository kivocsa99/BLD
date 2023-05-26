// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchpagemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchPageModel _$$_SearchPageModelFromJson(Map<String, dynamic> json) =>
    _$_SearchPageModel(
      Categories: (json['Categories'] as List<dynamic>?)
          ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      Ads: (json['Ads'] as List<dynamic>?)
          ?.map((e) => AdsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      RandomProducts: (json['RandomProducts'] as List<dynamic>?)
          ?.map((e) =>
              CategoryAndProductsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchPageModelToJson(_$_SearchPageModel instance) =>
    <String, dynamic>{
      'Categories': instance.Categories,
      'Ads': instance.Ads,
      'RandomProducts': instance.RandomProducts,
    };
