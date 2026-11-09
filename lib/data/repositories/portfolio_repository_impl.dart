import '../../domain/entities/contact_info.dart';
import '../../domain/entities/portfolio_data.dart';
import '../../domain/entities/social_link.dart';
import '../../domain/entities/work_experience.dart';
import '../../domain/repositories/portfolio_repository.dart';

/// Implementation of PortfolioRepository
/// Data from CV - Daffa Rafif Agustian (latest)
class PortfolioRepositoryImpl implements PortfolioRepository {
  @override
  Future<PortfolioData> getPortfolioData() async {
    await Future.delayed(const Duration(milliseconds: 100));

    return const PortfolioData(
      name: 'Daffa Rafif Agustian',
      title: 'Mobile Developer',
      about: [
        'I am Daffa Rafif Agustian, a Mobile Developer with more than three years of experience shipping Flutter applications for iOS and Android. My work includes an airport companion app, an Umrah and Hajj marketplace, a securities-crowdfunding platform, and enterprise maintenance apps.',
        'I hold a Bachelor\'s degree in Informatics Engineering from Universitas Singaperbangsa Karawang (2018–2022) with a GPA of 3.68/4.00. I am comfortable with Clean Architecture, MVVM, Riverpod, Bloc, and GetX, and with coordinating vendors so releases stay on schedule.',
        'My recent work includes Shiratha (Umrah, Hajj, and Muslim-friendly travel marketplace) and ExperIA (airport companion app for PT Angkasa Pura Indonesia). Previously, I developed VISIKU—a securities-crowdfunding platform—and multiple enterprise apps for Astra, Panasonic, Mattel, YKK, and Hitachi Astemo.',
        'Beyond technical delivery, I bring strong communication, adaptability, and teamwork—honed through my role in the Faculty of Computer Science Student Executive Board. I am committed to writing maintainable code and following industry best practices.',
        'This portfolio was built with Flutter web, applying Clean Architecture and MVVM with Riverpod, and developed using Cursor AI to enhance productivity and code quality.',
      ],
      contact: ContactInfo(
        phone: '+6285881448883',
        email: 'agustian2504@gmail.com',
        location: 'Bekasi, West Java, Indonesia',
      ),
      skills: [
        'Flutter',
        'Dart',
        'Clean Architecture',
        'MVVM',
        'Riverpod',
        'Bloc',
        'GetX',
        'REST API',
        'Firebase',
        'Git',
        'GitLab',
        'Postman',
        'Jira',
        'Trello',
      ],
      socialLinks: [
        SocialLink(
          platform: 'GitHub',
          url: 'https://github.com/Daffayy',
          icon: 'github',
        ),
        SocialLink(
          platform: 'LinkedIn',
          url: 'https://www.linkedin.com/in/daffa-rafif-agustian/',
          icon: 'linkedin',
        ),
      ],
      workExperiences: [
        WorkExperience(
          company: 'PT Treetan Nusantara Network',
          role: 'Mobile Developer',
          period: 'Feb 2026 – Present',
          description:
              'Developed Shiratha, a marketplace for Umrah, Hajj, and Muslim-friendly travel, for iOS and Android using Flutter and Riverpod. Led delivery with an external vendor so the app met the agreed timeline and targets. Used AI-assisted development to move faster without slipping the release schedule. Available on Google Play and App Store.',
          projects: ['Shiratha'],
          technologies: ['Flutter', 'Riverpod', 'iOS', 'Android'],
        ),
        WorkExperience(
          company: 'Godigi Prima Satya',
          role: 'Mobile Developer',
          period: 'Oct 2025 – Jan 2026',
          description:
              'Developed ExperIA, an airport companion app for PT Angkasa Pura Indonesia, using Flutter, Dart, and Bloc. Shipped the app on Android and iOS, covering flight information, airport facilities, and e-check-in. Available on Google Play and App Store.',
          projects: ['ExperIA'],
          technologies: ['Flutter', 'Dart', 'Bloc', 'iOS', 'Android'],
        ),
        WorkExperience(
          company: 'PT Amantra Investama Indodana (VISIKU)',
          role: 'Mobile Developer',
          period: 'Jul 2024 – Jun 2025',
          description:
              'Developed a securities-crowdfunding mobile app in Flutter, including new features and API integration. Managed state with Riverpod and kept transaction flows aligned with OJK regulations. Debugged, optimized, and maintained the app for responsiveness and reliability, working with the team in GitLab and Jira.',
          projects: ['VISIKU'],
          technologies: ['Flutter', 'Riverpod', 'GitLab', 'Jira'],
        ),
        WorkExperience(
          company: 'PT Ragdalion Revolusi Industri',
          role: 'Mobile Developer',
          period: 'Jun 2023 – May 2024',
          description:
              'Built and maintained mobile apps including Astra Juoko Indonesia, Sugity, Panasonic MaintenancePro, Mattel, YKK MaintenancePro, Denger-inD, Hitachi Astemo, and Karang Taruna. Applied Clean Architecture and GetX, integrated REST APIs with Postman, and tracked work in GitLab and Trello.',
          projects: [
            'Astra Juoko Indonesia',
            'Sugity',
            'Panasonic MaintenancePro',
            'Mattel',
            'YKK MaintenancePro',
            'Denger-inD',
            'Hitachi Astemo',
            'Karang Taruna',
          ],
          technologies: [
            'Flutter',
            'GetX',
            'Clean Architecture',
            'Postman',
            'GitLab',
            'Trello',
          ],
        ),
        WorkExperience(
          company: 'PT Ihsan Solusi Informatika',
          role: 'Flutter Developer (Bootcamp)',
          period: 'Feb 2023 – Apr 2023',
          description:
              'Completed a Flutter bootcamp covering Dart, Git, local storage, Firebase, RESTful APIs, and Clean Architecture.',
          projects: [],
          technologies: [
            'Flutter',
            'Dart',
            'Firebase',
            'REST API',
            'Clean Architecture',
            'Git',
          ],
        ),
        WorkExperience(
          company: 'PT Telkom Indonesia (MBKM)',
          role: 'Web Developer Intern',
          period: 'Mar 2022 – Jul 2022',
          description:
              'Built the website for SVCC (Smarteye Virtual Convention Center) with HTML, CSS, JavaScript, and Bootstrap.',
          projects: ['SVCC - Smarteye Virtual Convention Center'],
          technologies: ['HTML', 'CSS', 'JavaScript', 'Bootstrap'],
        ),
      ],
      portfolioUrl: 'https://daffayy.github.io/portofolio/',
    );
  }
}
