/// Domain entity for work experience
class WorkExperience {
  const WorkExperience({
    required this.company,
    required this.role,
    required this.period,
    required this.description,
    this.projects = const [],
    this.technologies = const [],
  });

  final String company;
  final String role;
  final String period;
  final String description;
  final List<String> projects;
  final List<String> technologies;
}
