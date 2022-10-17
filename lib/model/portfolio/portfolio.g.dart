// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Portfolio _$PortfolioFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Portfolio',
      json,
      ($checkedConvert) {
        final val = Portfolio(
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          price: $checkedConvert('price', (v) => (v as num?)?.toDouble()),
          timeCost: $checkedConvert('timeCost', (v) => v as int?),
          images: $checkedConvert('images',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          flags: $checkedConvert(
              'flags',
              (v) => (v as List<dynamic>)
                  .map((e) => $enumDecode(_$PortfolioFlagEnumMap, e))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PortfolioToJson(Portfolio instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'timeCost': instance.timeCost,
      'images': instance.images,
      'flags': instance.flags.map((e) => _$PortfolioFlagEnumMap[e]).toList(),
    };

const _$PortfolioFlagEnumMap = {
  PortfolioFlag.minimalist: 'minimalist',
  PortfolioFlag.graphic: 'graphic',
  PortfolioFlag.printable: 'printable',
  PortfolioFlag.flyers: 'flyers',
  PortfolioFlag.animation: 'animation',
  PortfolioFlag.vector: 'vector',
  PortfolioFlag.twoD: 'twoD',
  PortfolioFlag.threeD: 'threeD',
  PortfolioFlag.UiUx: 'UiUx',
};
