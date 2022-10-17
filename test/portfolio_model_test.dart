import 'package:flutter_test/flutter_test.dart';
import 'package:ravinala_studio_website/model/portfolio/portfolio_flag.dart';

import 'package:ravinala_studio_website/model/portfolio/portfolio.dart';

import 'package:json_annotation/json_annotation.dart' show $enumDecode;

const String title = "Pensé Saint";

const String description =
    "Pense_saint est le premier projet réaliser par Ravinala Studio.";

const double price = 350.0;

const int timeCost = 4;

const List<String> images = <String>[
  "pense_saint_0.png",
  "pense_saint_1.png",
  "pense_saint_2.png"
];

const List<PortfolioFlag> flags = <PortfolioFlag>[
  PortfolioFlag.graphic,
  PortfolioFlag.minimalist,
  PortfolioFlag.printable,
  PortfolioFlag.flyers,
];

const List<String> flagsName = <String>[
  'graphic',
  'minimalist',
  'printable',
  'flyers',
];
Map<String, dynamic> json = {
  titleKey: title,
  descriptionKey: description,
  priceKey: price,
  timeCostKey: timeCost,
  imagesKey: images,

  /// We must use a string as enum mapping because is\t is
  flagsKey: flagsName,
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

void main() {
  // ensure that the engine is ready to handle framework routines
  TestWidgetsFlutterBinding.ensureInitialized();
  group(
    'Portfolio class test',
    () {
      test(
        'Portfolio const constructor instatiation test',
        () {
          Portfolio portfolio = const Portfolio(
            title: title,
            description: description,
            price: price,
            timeCost: timeCost,
            images: images,
            flags: flags,
          );

          expect(portfolio.title, title);
          expect(portfolio.price, 350);
          expect(portfolio.description, description);
          expect(portfolio.timeCost, 4);
          expect(portfolio.flags.contains(PortfolioFlag.flyers), true);
        },
      );
      test(
        'Portfolio from Json',
        () {
          Portfolio portfolioFromJson = Portfolio.fromJson(json);

          expect(portfolioFromJson.title, title);
          expect(portfolioFromJson.price, price);
          expect(portfolioFromJson.description, description);
          expect(portfolioFromJson.timeCost, timeCost);
          expect(portfolioFromJson.flags.contains(PortfolioFlag.flyers), true);
        },
      );
      test(
        'enum as dynamic comparison',
        () {
          var flag = (v) {
            (v as List<dynamic>)
                .map((e) => $enumDecode(Portfolio.flagsAndNames, e))
                .toList();
          }(flagsName);

          print(flag);
        },
      );
    },
  );
}
