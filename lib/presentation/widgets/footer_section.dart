import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../privacy_policy_page.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isDesktop = width > 800;

    return Container(
      width: double.infinity,
      color: const Color(0xFF070B1E),
      padding: EdgeInsets.symmetric(horizontal: width * 0.08, vertical: 60),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.change_history_rounded,
                          color: Color(0xFF6366F1),
                          size: 28,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'AlvaIndigo',
                          style: GoogleFonts.plusJakartaSans(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Building powerful apps that help you\nwork smarter and stay connected.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              if (isDesktop)
                const Expanded(
                  flex: 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FooterColumn(
                        title: 'Product',
                        links: ['Apps', 'Features', 'Download'],
                      ),
                      FooterColumn(
                        title: 'Company',
                        links: ['About Us', 'Careers', 'Contact'],
                      ),
                      FooterColumn(
                        title: 'Resources',
                        links: ['Docs', 'Support', 'Blog'],
                      ),
                      FooterColumn(
                        title: 'Download',
                        links: ['Windows', 'macOS', 'Linux'],
                      ),
                    ],
                  ),
                ),
            ],
          ),
          const Divider(color: Colors.white10, height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '© 2026 AlvaIndigo. All rights reserved.',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PrivacyPolicyPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'Terms of Service',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'Cookies',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FooterColumn extends StatelessWidget {
  final String title;
  final List<String> links;
  const FooterColumn({required this.title, required this.links, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 16),
        ...links.map(
          (link) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text(
              link,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
