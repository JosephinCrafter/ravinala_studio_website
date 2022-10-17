import 'portfolio_flag.dart';
import 'package:json_annotation/json_annotation.dart';

part 'portfolio.g.dart';

const String titleKey = "title";
const String descriptionKey = "description";
const String imagesKey = "images";
const String priceKey = "price";
const String timeCostKey = "timeCost";
const String flagsKey = "flags";

/// This is a portfolio project representation.
///
/// A portfolio project should be a folder with
/// a portfolio.json file mandatory. This file contains
/// all portfolio metadata like title, description, price,
/// the required development time.
/// An example of portfolio.json will be:
/// ```json
/// {
///   "title":"Pense Saint",
///   "description":"Pense Saint est la premiere project de Ravinala Studio",
///   "price":0.2,
///    "timeCost": 4,
///   "images": [
///       "pense_saint_0.png",
///       "pense_saint_1.png",
///       "pense_saint_2.png"],
///   "flag": [
///       PortfolioFlag.graphic,
///       PortfolioFlag.flyers]
/// }
/// ```

@JsonSerializable(
  checked: true,
  explicitToJson: true,
  genericArgumentFactories: true,
)
class Portfolio {
  const Portfolio({
    required this.title,
    this.description,
    this.price,
    this.timeCost,
    required this.images,
    required this.flags,
  });

  /// The displayed name of the portfolio.
  ///
  /// This string must not be null.
  final String title;

  /// A short description of the portfolio.
  final String? description;

  /// The estimated price of a project same or all most to the
  /// portfolio.
  ///
  /// The price is in US Dollar.
  final double? price;

  /// The amount of time required to fulfill a the project
  /// quality requirements.
  ///
  /// This is equivalent to a number of days required to build
  /// the project.
  final int? timeCost;

  /// A List of string that is paths of all the portfolio picture and must not be null.
  ///
  /// This list contains typically the name of the image file.
  final List<String> images;

  /// The PortfolioFlag list that the project belongs.
  ///
  /// This list is used by the Portfolio search/filters engine
  /// to add granularity to portfolios and must not be null.
  final List<PortfolioFlag> flags;

  /// factory from JsonSerializable
  factory Portfolio.fromJson(Map<String, dynamic> json) =>
      _$PortfolioFromJson(json);

  /// Convert a Portfolio object to a json Map<String, dynamic>
  Map<String, dynamic> toJson() => _$PortfolioToJson(this);

  /// A string mapping to flags.
  static Map<PortfolioFlag, String> get flagsAndNames => _$PortfolioFlagEnumMap;
}
