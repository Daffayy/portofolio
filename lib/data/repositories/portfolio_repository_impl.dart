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
        'Hello, I am Daffa Rafif Agustian. As a Mobile Developer, I possess skills in the Dart programming language and the Flutter framework. I graduated from Universitas Singaperbangsa Karawang, majoring in Informatics Engineering, Faculty of Computer Science, in 2022 with a GPA of 3.68.',
        'In 2023, I received a bootcamp scholarship from PT Ihsan Solusi Informatika, marking the beginning of my journey as a Mobile Developer.',
        'My professional experience includes working as a Mobile Developer at PT Amantra Investama Indodana, PT Ragdalion Revolusi Industri and interning as a Web Developer at PT Telkom Indonesia Tbk through the Certified Internship Program, Kampus Merdeka (MBKM).',
        'During my time in university, I was actively involved in the Student Executive Board of the Faculty of Computer Science. This experience helped me develop soft skills such as being communicative, adaptive, and collaborative when working in a team.',
        'This portfolio was implemented using Cursor AI—an AI-powered code editor that accelerates development through intelligent code completion, refactoring suggestions, and natural language to code. By leveraging Cursor AI, I was able to efficiently build this Flutter web application with Clean Architecture, MVVM pattern, and Riverpod state management, while maintaining code quality and best practices.',
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
          technologies: ['Flutter', 'GetX', 'Clean Architecture', 'Postman', 'GitLab', 'Trello'],
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
