import '../entities/portfolio_data.dart';

/// Abstract repository for portfolio data
/// Part of Clean Architecture - Domain layer
abstract class PortfolioRepository {
  Future<PortfolioData> getPortfolioData();
}
