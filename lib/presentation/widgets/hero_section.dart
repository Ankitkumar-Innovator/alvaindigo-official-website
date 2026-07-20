import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isDesktop = width > 950;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF030616), Color(0xFF0A0F26)],
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: width * 0.08, vertical: 24),
      child: Column(
        children: [
          // Navigation Bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left Side: Title Only (Navbar logo removed)
              Text(
                'AlvaIndigo',
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.white,
                  fontSize:
                      24, // Slightly increased size for a stronger brand presence
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5,
                ),
              ),
              if (isDesktop)
                Row(
                  children: [
                    _navItem('Home', isActive: true),
                    _navItem('Apps', hasDropdown: true),
                    _navItem('Docs'),
                    _navItem('Technology'),
                    _navItem('About'),
                    _navItem('Support'),
                  ],
                ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.window, size: 18),
                label: const Text('Download for Windows'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4F46E5),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 80),

          // Hero Body
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: isDesktop ? 56 : 38,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                          color: Colors.white,
                        ),
                        children: const [
                          TextSpan(text: 'Powerful Apps.\nSeamlessly\n'),
                          TextSpan(
                            text: 'Connected.',
                            style: TextStyle(color: Color(0xFF6366F1)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'A unified ecosystem of apps designed to simplify your work and keep you in sync across all your devices.',
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.grey[400],
                        fontSize: 18,
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.window),
                          label: const Text('Download for Windows'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF6366F1),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 20,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward),
                          label: const Text('Explore Apps'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white30),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 20,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (isDesktop) const SizedBox(width: 40),
              if (isDesktop)
                Expanded(
                  flex: 5,
                  child: Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Expanded Ambient Aura Ring
                        Container(
                          width: 470,
                          height: 470,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFF6366F1).withValues(alpha : 0.15),
                              width: 1.5,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(
                                  0xFFBD00FF,
                                ).withValues(alpha: 0.12),
                                blurRadius: 100,
                                spreadRadius: 25,
                              ),
                            ],
                          ),
                        ),

                        // Grand Circular Logo Window to read signature clearly
                        Container(
                          width: 420,
                          height: 420,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFF6366F1).withValues(alpha: 0.35),
                              width: 2,
                            ),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/brand_logo.jpeg',
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(
                                    Icons.change_history_rounded,
                                    size: 220,
                                    color: Color(0xFF38BDF8),
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 90),

          // Trust Badges Footer
          Wrap(
            spacing: 40,
            runSpacing: 16,
            children: [
              _trustBadge(Icons.shield_outlined, '100% Safe & Secure'),
              _trustBadge(Icons.wifi_off_outlined, 'Works Offline'),
              _trustBadge(Icons.update, 'Easy Updates'),
              _trustBadge(Icons.person_outline, 'Made for Everyone'),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  static Widget _navItem(
    String title, {
    bool isActive = false,
    bool hasDropdown = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.plusJakartaSans(
              color: isActive ? Colors.white : Colors.grey[400],
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          if (hasDropdown)
            const Padding(
              padding: EdgeInsets.only(left: 4),
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.grey,
                size: 16,
              ),
            ),
        ],
      ),
    );
  }

  static Widget _trustBadge(IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: const Color(0xFF6366F1), size: 18),
        const SizedBox(width: 8),
        Text(text, style: const TextStyle(color: Colors.white70, fontSize: 14)),
      ],
    );
  }
}
