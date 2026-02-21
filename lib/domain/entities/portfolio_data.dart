import 'contact_info.dart';
import 'work_experience.dart';
import 'social_link.dart';

/// Main domain entity containing all portfolio data
class PortfolioData {
  const PortfolioData({
    required this.name,
    required this.title,
    required this.about,
    required this.contact,
    required this.skills,
    required this.socialLinks,
    required this.workExperiences,
    required this.portfolioUrl,
  });

  final String name;
  final String title;
  final List<String> about;
  final ContactInfo contact;
  final List<String> skills;
  final List<SocialLink> socialLinks;
  final List<WorkExperience> workExperiences;
  final String portfolioUrl;
}
