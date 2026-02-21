/// Domain entity for social media links
class SocialLink {
  const SocialLink({
    required this.platform,
    required this.url,
    required this.icon,
  });

  final String platform;
  final String url;
  final String icon;
}
