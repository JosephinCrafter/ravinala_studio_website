import 'package:ravinala_studio_website/model/portfolio/portfolio.dart';

enum PortfolioFlag {
  minimalist,
  graphic,
  printable,
  flyers,
  animation,
  vector,
  twoD,
  threeD,
  UiUx,
}

extension PortfolioFlagX on PortfolioFlag {
  Portfolio search(PortfolioFlag flag, portfolios) {
    // Todo: implement portfolio Search method
    return throw (UnimplementedError);
  }
}
