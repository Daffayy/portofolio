import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/portfolio_data.dart';
import '../providers/portfolio_provider.dart';
import '../widgets/about_section.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/contact_section.dart';
import '../widgets/experience_section.dart';
import '../widgets/footer_widget.dart';
import '../widgets/hero_section.dart';
import '../widgets/skills_section.dart';

/// Main portfolio page - View in MVVM
class PortfolioPage extends ConsumerWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final portfolioAsync = ref.watch(portfolioViewModelProvider);

    return Scaffold(
      body: portfolioAsync.when(
        loading: () => const _LoadingView(),
        error: (error, stack) => _ErrorView(error: error.toString()),
        data: (portfolioData) {
          return _PortfolioContent(portfolioData: portfolioData);
        },
      ),
    );
  }
}

class _PortfolioContent extends StatefulWidget {
  const _PortfolioContent({
    required this.portfolioData,
  });

  final PortfolioData portfolioData;

  @override
  State<_PortfolioContent> createState() => _PortfolioContentState();
}

class _PortfolioContentState extends State<_PortfolioContent> {
  final ScrollController _scrollController = ScrollController();
  final Map<String, GlobalKey> _sectionKeys = {
    'about': GlobalKey(),
    'skills': GlobalKey(),
    'experience': GlobalKey(),
    'contact': GlobalKey(),
  };

  void _scrollToSection(String sectionId) {
    final key = _sectionKeys[sectionId];
    if (key?.currentContext != null) {
      Scrollable.ensureVisible(
        key!.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final portfolioData = widget.portfolioData;

    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverAppBar(
          pinned: true,
          floating: true,
          backgroundColor: Colors.transparent,
          flexibleSpace: AppBarWidget(onNavTap: _scrollToSection),
        ),
        SliverToBoxAdapter(
          child: HeroSection(portfolioData: portfolioData),
        ),
        SliverToBoxAdapter(
          child: KeyedSubtree(
            key: _sectionKeys['about'],
            child: AboutSection(portfolioData: portfolioData),
          ),
        ),
        SliverToBoxAdapter(
          child: KeyedSubtree(
            key: _sectionKeys['skills'],
            child: SkillsSection(portfolioData: portfolioData),
          ),
        ),
        SliverToBoxAdapter(
          child: KeyedSubtree(
            key: _sectionKeys['experience'],
            child: ExperienceSection(
              experiences: portfolioData.workExperiences,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: KeyedSubtree(
            key: _sectionKeys['contact'],
            child: ContactSection(portfolioData: portfolioData),
          ),
        ),
        const SliverToBoxAdapter(
          child: FooterWidget(),
        ),
      ],
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator()
              .animate(onPlay: (c) => c.repeat(reverse: true))
              .scale(
                begin: const Offset(0.9, 0.9),
                end: const Offset(1.1, 1.1),
                duration: 800.ms,
                curve: Curves.easeInOut,
              ),
          const SizedBox(height: 24),
          Text(
            'Loading portfolio...',
            style: Theme.of(context).textTheme.bodyLarge,
          )
              .animate()
              .fadeIn(delay: 300.ms, duration: 500.ms)
              .slideY(begin: 0.2, end: 0),
        ],
      ),
    ).animate().fadeIn(duration: 400.ms);
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64),
            const SizedBox(height: 24),
            Text(
              'Failed to load portfolio',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(error, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
