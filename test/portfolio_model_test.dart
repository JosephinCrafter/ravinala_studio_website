import 'package:flutter_test/flutter_test.dart';
import 'package:ravinala_studio_website/model/portfolio/portfolio_flag.dart';

import 'package:ravinala_studio_website/model/portfolio/portfolio.dart';

const String title = "Pense_saint";

const String description =
    "Pense_saint est le premier projet réaliser par Ravinala Studio.";

void main() {
  // ensure that the engine is ready to handle framework routines
  TestWidgetsFlutterBinding.ensureInitialized();

  test('Portfolio class test', () {
    Portfolio portfolio = const Portfolio(
      title: title,
      description: description,
      price: 350.0,
      timeCost: 4,
      images: <String>[
        "pense_saint_0.png",
        "pense_saint_1.png",
        "pense_saint_2.png"
      ],
      flags: <PortfolioFlag>[
        PortfolioFlag.graphic,
        PortfolioFlag.minimalist,
        PortfolioFlag.printable,
        PortfolioFlag.flyers,
      ],
    );

    expect(portfolio.title, title);
    expect(portfolio.price, 350);
    expect(portfolio.description, description);
    expect(portfolio.timeCost, 4);
    expect(portfolio.flags.contains(PortfolioFlag.flyers), true);
  });
}
