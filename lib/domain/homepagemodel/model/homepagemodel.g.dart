// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homepagemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomePageModel _$$_HomePageModelFromJson(Map<String, dynamic> json) =>
    _$_HomePageModel(
      AZSVR: json['AZSVR'] as String?,
      User: json['User'] == null
          ? null
          : UserModel.fromJson(json['User'] as Map<String, dynamic>),
      UserOrdersCount: json['UserOrdersCount'] as int?,
      UserProjectsCount: json['UserProjectsCount'] as int?,
      Ads: (json['Ads'] as List<dynamic>?)
          ?.map((e) => AdsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      CategoryAndProducts: (json['CategoryAndProducts'] as List<dynamic>?)
          ?.map((e) =>
              CategoryAndProductsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      RandomSuppliers: (json['RandomSuppliers'] as List<dynamic>?)
          ?.map((e) => SuppliersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HomePageModelToJson(_$_HomePageModel instance) =>
    <String, dynamic>{
      'AZSVR': instance.AZSVR,
      'User': instance.User,
      'UserOrdersCount': instance.UserOrdersCount,
      'UserProjectsCount': instance.UserProjectsCount,
      'Ads': instance.Ads,
      'CategoryAndProducts': instance.CategoryAndProducts,
      'RandomSuppliers': instance.RandomSuppliers,
    };
