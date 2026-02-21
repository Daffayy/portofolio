/// Domain entity for contact information
class ContactInfo {
  const ContactInfo({
    required this.phone,
    required this.email,
    required this.location,
  });

  final String phone;
  final String email;
  final String location;
}
