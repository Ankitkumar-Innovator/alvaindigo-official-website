import 'package:flutter/material.dart';

class PillarsSection extends StatelessWidget {
  const PillarsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isDesktop = width > 750;

    return Container(
      width: double.infinity,
      color: const Color(0xFF0A0F24),
      padding: EdgeInsets.symmetric(horizontal: width * 0.08, vertical: 50),
      child: isDesktop
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _buildPillars(),
            )
          : Column(
              children: _buildPillars()
                  .map(
                    (w) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: w,
                    ),
                  )
                  .toList(),
            ),
    );
  }

  List<Widget> _buildPillars() {
    return [
      _pillarItem(
        Icons.verified_user_outlined,
        'Secure & Private',
        'Your data is yours.\nWe keep it that way.',
      ),
      _pillarItem(
        Icons.cloud_off,
        'Works Offline',
        'Most features work\nwithout internet.',
      ),
      _pillarItem(
        Icons.bolt,
        'Blazing Fast',
        'Built for speed and\nperformance.',
      ),
      _pillarItem(
        Icons.people_outline,
        'Made for Everyone',
        'Simple, clean and\neasy to use.',
      ),
    ];
  }

  static Widget _pillarItem(IconData icon, String title, String subtitle) {
    return Column(
      children: [
        Icon(icon, color: const Color(0xFF6366F1), size: 32),
        const SizedBox(height: 12),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.grey, fontSize: 13, height: 1.4),
        ),
      ],
    );
  }
}
