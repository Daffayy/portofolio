import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/portfolio_repository_impl.dart';
import '../../domain/entities/portfolio_data.dart';
import '../../domain/repositories/portfolio_repository.dart';

/// Provider for PortfolioRepository (Dependency Injection)
final portfolioRepositoryProvider = Provider<PortfolioRepository>((ref) {
  return PortfolioRepositoryImpl();
});

/// State for portfolio - AsyncValue handles loading, error, data
typedef PortfolioState = AsyncValue<PortfolioData>;

/// ViewModel - MVVM pattern
/// Manages portfolio data state using Riverpod
final portfolioViewModelProvider =
    FutureProvider<PortfolioData>((ref) async {
  final repository = ref.watch(portfolioRepositoryProvider);
  return repository.getPortfolioData();
});
