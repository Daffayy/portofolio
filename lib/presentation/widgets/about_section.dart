import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../core/theme/app_colors.dart';
import '../../domain/entities/portfolio_data.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
    required this.portfolioData,
  });

  final PortfolioData portfolioData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 4,
                  height: 40,
                  decoration: BoxDecoration(
                    gradient: AppColors.heroGradient,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  'ABOUT ME',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                ),
              ],
            )
                .animate()
                .fadeIn(duration: 500.ms)
                .slideX(begin: -0.2, end: 0),
            const SizedBox(height: 32),
            ...portfolioData.about.asMap().entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  entry.value,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.textSecondary,
                        height: 1.8,
                      ),
                ),
              )
                  .animate()
                  .fadeIn(delay: (100 * (entry.key + 1)).ms, duration: 500.ms)
                  .slideX(begin: 0.1, end: 0);
            }),
          ],
        ),
      ),
    );
  }
}
