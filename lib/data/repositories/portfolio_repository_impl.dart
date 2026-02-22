import '../../domain/entities/contact_info.dart';
import '../../domain/entities/portfolio_data.dart';
import '../../domain/entities/social_link.dart';
import '../../domain/entities/work_experience.dart';
import '../../domain/repositories/portfolio_repository.dart';

/// Implementation of PortfolioRepository
/// Data from CV - Daffa Rafif Agustian
class PortfolioRepositoryImpl implements PortfolioRepository {
  @override
  Future<PortfolioData> getPortfolioData() async {
    // Simulate async data fetch (could be from API/local storage)
    await Future.delayed(const Duration(milliseconds: 100));

    return const PortfolioData(
      name: 'Daffa Rafif Agustian',
      title: 'Mobile Developer',
      about: [
        'I am Daffa Rafif Agustian, a Mobile Developer specializing in Flutter and Dart. I hold a Bachelor\'s degree in Informatics Engineering from Universitas Singaperbangsa Karawang (2022) with a GPA of 3.68, and I am certified through the PT Ihsan Solusi Informatika bootcamp program.',
        'With hands-on experience in fintech and enterprise applications, I have delivered production-ready mobile solutions using Clean Architecture, MVVM pattern, and state management (Riverpod, GetX). My technical stack includes API integration, version control with Git, and collaborative workflows with GitLab, Trello, JIRA.',
        'I have contributed to the development of VISIKU—a Securities Crowdfunding platform—and multiple enterprise maintenance applications for companies such as Astra, Panasonic, and Hitachi Astemo. I also completed an internship at PT Telkom Indonesia through the Merdeka Belajar Kampus Merdeka (MBKM) program.',
        'Beyond technical skills, I bring strong communication, adaptability, and teamwork—honed through my role in the Student Executive Board of the Faculty of Computer Science. I am committed to writing maintainable code and following industry best practices.',
      ],
      contact: ContactInfo(
        phone: '+6285881448883',
        email: 'agustian2504@gmail.com',
        location: 'Kota Bekasi',
      ),
      skills: [
        'Dart',
        'Flutter',
        'State Management Getx',
        'State Management Riverpod',
        'Clean Architecture',
        'Git',
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
          company: 'PT Amantra Investama Indodana',
          role: 'Mobile Developer',
          period: 'Juli 2024 - Juni 2025',
          description:
              'During my tenure here, I have held the position of Mobile Developer, responsible for developing the VISIKU application, a platform facilitating transactions between funders and investors. VISIKU is a company specializing in Securities Crowdfunding services through an information technology-based platform called Visiku.',
          projects: ['VISIKU'],
          technologies: ['Flutter', 'Riverpod', 'MVVM'],
        ),
        WorkExperience(
          company: 'PT Ragdalion Revolusi Industri',
          role: 'Mobile Developer',
          period: 'Juni 2023 - Juni 2024',
          description:
              'As a Mobile Developer, I have completed several projects and contributed to the development of existing applications.',
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
          company: 'PT Telkom Indonesia Tbk',
          role: 'Web Developer (Intern)',
          period: 'Maret - Juli 2022',
          description:
              'During my internship at PT Telkom Indonesia, I worked on a project to create a website for the SVCC (Smarteye Virtual Convention Center) product. Throughout the internship, I gained valuable insights into team collaboration and self-improvement.',
          projects: ['SVCC - Smarteye Virtual Convention Center'],
          technologies: ['HTML', 'CSS', 'JavaScript', 'Bootstrap'],
        ),
      ],
      portfolioUrl: 'https://daffayy.github.io/portofolio/',
    );
  }
}
