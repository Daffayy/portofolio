import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../core/theme/app_colors.dart';
import '../../domain/entities/portfolio_data.dart';

const String _profileImageAsset = 'assets/daffa_rafif_agustian_formal.jpeg';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key, required this.portfolioData});

  final PortfolioData portfolioData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.background, AppColors.surface],
        ),
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: Column(
          children: [
            // Profile photo with gradient border
            Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: AppColors.heroGradient,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primary.withValues(alpha: 0.4),
                        blurRadius: 30,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(4),
                  child: ClipOval(
                    child: Image.asset(
                      _profileImageAsset,
                      fit: BoxFit.cover,
                      width: 132,
                      height: 132,
                      alignment: const Alignment(0, -0.25),
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: AppColors.surface,
                        child: Icon(
                          Icons.person_rounded,
                          size: 70,
                          color: AppColors.primary.withValues(alpha: 0.6),
                        ),
                      ),
                    ),
                  ),
                )
                .animate()
                .fadeIn(duration: 600.ms)
                .scale(begin: const Offset(0.5, 0.5), curve: Curves.elasticOut)
                .then(delay: 400.ms)
                .shimmer(
                  duration: 1500.ms,
                  color: AppColors.primaryLight.withValues(alpha: 0.3),
                ),
            const SizedBox(height: 32),
            ShaderMask(
                  shaderCallback: (bounds) =>
                      AppColors.heroGradient.createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                      ),
                  child: Text(
                    portfolioData.name.toUpperCase(),
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
                .animate()
                .fadeIn(delay: 200.ms, duration: 600.ms)
                .slideY(begin: 0.3, end: 0, curve: Curves.easeOutCubic)
                .then()
                .blur(
                  begin: const Offset(8, 0),
                  end: Offset.zero,
                  duration: 400.ms,
                ),
            const SizedBox(height: 12),
            Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: AppColors.primary.withValues(alpha: 0.5),
                      width: 1,
                    ),
                  ),
                  child: Text(
                    portfolioData.title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: AppColors.primaryLight,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
                .animate()
                .fadeIn(delay: 400.ms, duration: 600.ms)
                .slideY(begin: 0.3, end: 0, curve: Curves.easeOutBack),
            const SizedBox(height: 40),
            Text(
                  'Crafting beautiful mobile experiences with Flutter',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.textSecondary,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                )
                .animate()
                .fadeIn(delay: 600.ms, duration: 600.ms)
                .slideY(begin: 0.2, end: 0)
                .then()
                .shimmer(
                  delay: 800.ms,
                  duration: 2000.ms,
                  color: AppColors.textSecondary.withValues(alpha: 0.2),
                ),
          ],
        ),
      ),
    );
  }
}
