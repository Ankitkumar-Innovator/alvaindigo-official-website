import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const AlvaIndigoApp());
}

class AlvaIndigoApp extends StatelessWidget {
  const AlvaIndigoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlvaIndigo - Innovate, Build, Inspire.',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: GoogleFonts.plusJakartaSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFF070B1E), // Deep dark theme background
      body: SelectionArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 1. Hero & Navigation Section
              const HeroSection(),
              
              // 2. Features Grid Section (Light Background)
              const ProductGridSection(),
              
              // 3. Dark Banner / Pillars
              const PillarsSection(),
              
              // 4. Download / Steps Section (Light Background)
              const StepsSection(),
              
              // 5. Newsletter Footer
              const NewsletterSection(),
              
              // 6. Deep Footer
              const FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}

// --- 1. HERO & NAVIGATION SECTION ---
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
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.08,
        vertical: 24,
      ),
      child: Column(
        children: [
          // Navigation Bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Logo
              Row(
                children: [
                  const Icon(Icons.change_history_rounded, color: Color(0xFF6366F1), size: 32), ///REPLACE WITH IMAGE WIDGET
                  const SizedBox(width: 8),
                  Text(
                    'AlvaIndigo',
                    style: GoogleFonts.plusJakartaSans(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              // Menu Items (Desktop only)
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
              // Action CTA
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.window, size: 18),
                label: const Text('Download for Windows'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4F46E5),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 80),

          // Hero Body
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Left Content
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
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (isDesktop) const SizedBox(width: 40),
              // Right Graphic Platform Placeholder
              if (isDesktop)
                Expanded(
                  flex: 5,
                  child: Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Neon Ring Bases
                        Container(
                          width: 320,
                          height: 320,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: const Color(0xFFBD00FF).withValues(alpha: 0.4), width: 4),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFFBD00FF).withValues(alpha: 0.2),
                                blurRadius: 40,
                                spreadRadius: 10,
                              )
                            ],
                          ),
                        ),
                        // Simulated 3D Core Logo Icon
                        const Icon(
                          Icons.change_history_rounded,
                          size: 180,
                          color: Color(0xFF38BDF8),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 80),
          // Micro Trust Badges
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

  static Widget _navItem(String title, {bool isActive = false, bool hasDropdown = false}) {
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
          if (hasDropdown) const Icon(Icons.keyboard_arrow_down, color: Colors.grey, size: 16),
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

// --- 2. PRODUCT GRID SECTION (White Clean Base) ---
class ProductGridSection extends StatelessWidget {
  const ProductGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isDesktop = width > 900;

    return Container(
      width: double.infinity,
      color: const Color(0xFFF8FAFC),
      padding: EdgeInsets.symmetric(horizontal: width * 0.08, vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(color: const Color(0xFFEEF2FF), borderRadius: BorderRadius.circular(4)),
            child: Text('OUR APPS', style: GoogleFonts.plusJakartaSans(color: const Color(0xFF4F46E5), fontSize: 11, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Everything you need.\nAll in one place.',
                style: GoogleFonts.plusJakartaSans(fontSize: 36, fontWeight: FontWeight.bold, color: const Color(0xFF0F172A), height: 1.2),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Text('View all apps'),
                label: const Icon(Icons.arrow_forward, size: 16),
                style: TextButton.styleFrom(foregroundColor: const Color(0xFF4F46E5)),
              )
            ],
          ),
          const SizedBox(height: 48),
          GridView.count(
            crossAxisCount: isDesktop ? 4 : (width > 600 ? 2 : 1),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.78,
            children: const [
              AppCard(title: 'InsightPad', desc: 'Your digital notebook for notes, tasks, and ideas.', icon: Icons.menu_book, accentColor: Color(0xFF6366F1)),
              AppCard(title: 'ChronoTask', desc: 'Plan better, stay focused, get things done.', icon: Icons.notifications_active, accentColor: Color(0xFFF97316)),
              AppCard(title: 'P2P Synch', desc: 'Sync files across devices securely and instantly.', icon: Icons.sync, accentColor: Color(0xFF3B82F6)),
              AppCard(title: 'Go-Fetch Mail', desc: 'Smart email made simple. Fast, local, and private.', icon: Icons.mail_outline, accentColor: Color(0xFF10B981)),
            ],
          )
        ],
      ),
    );
  }
}

class AppCard extends StatelessWidget {
  final String title;
  final String desc;
  final IconData icon;
  final Color accentColor;

  const AppCard({required this.title, required this.desc, required this.icon, required this.accentColor, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.03), blurRadius: 20, offset: const Offset(0, 10))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(color: accentColor.withValues(alpha: 0.1), borderRadius: BorderRadius.circular(12)),
            child: Icon(icon, color: accentColor, size: 28),
          ),
          const SizedBox(height: 24),
          Text(title, style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.bold, fontSize: 20, color: const Color(0xFF0F172A))),
          const SizedBox(height: 12),
          Text(desc, style: GoogleFonts.plusJakartaSans(color: const Color(0xFF64748B), fontSize: 14, height: 1.5)),
          const Spacer(),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: Size.zero, tapTargetSize: MaterialTapTargetSize.shrinkWrap),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Learn more', style: TextStyle(color: accentColor, fontWeight: FontWeight.w600)),
                const SizedBox(width: 4),
                Icon(Icons.arrow_forward, size: 14, color: accentColor)
              ],
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.window, size: 14),
              label: const Text('Download for Windows', style: TextStyle(fontSize: 12)),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEEF2FF),
                foregroundColor: const Color(0xFF4F46E5),
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// --- 3. PILLARS SECTION (Dark Accent Feature Bar) ---
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
              children: _buildPillars().map((w) => Padding(padding: const EdgeInsets.symmetric(vertical: 20), child: w)).toList(),
            ),
    );
  }

  List<Widget> _buildPillars() {
    return [
      _pillarItem(Icons.verified_user_outlined, 'Secure & Private', 'Your data is yours.\nWe keep it that way.'),
      _pillarItem(Icons.cloud_off, 'Works Offline', 'Most features work\nwithout internet.'),
      _pillarItem(Icons.bolt, 'Blazing Fast', 'Built for speed and\nperformance.'),
      _pillarItem(Icons.people_outline, 'Made for Everyone', 'Simple, clean and\neasy to use.'),
    ];
  }

  static Widget _pillarItem(IconData icon, String title, String subtitle) {
    return Column(
      children: [
        Icon(icon, color: const Color(0xFF6366F1), size: 32),
        const SizedBox(height: 12),
        Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
        const SizedBox(height: 6),
        Text(subtitle, textAlign: Alignment.center == Alignment.center ? TextAlign.center : TextAlign.start, style: const TextStyle(color: Colors.grey, fontSize: 13, height: 1.4)),
      ],
    );
  }
}

// --- 4. STEPS / INSTALL SECTION ---
class StepsSection extends StatelessWidget {
  const StepsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isDesktop = width > 900;

    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: width * 0.08, vertical: 80),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(color: const Color(0xFFEEF2FF), borderRadius: BorderRadius.circular(4)),
                  child: Text('EASY TO GET STARTED', style: GoogleFonts.plusJakartaSans(color: const Color(0xFF4F46E5), fontSize: 11, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 16),
                Text('Download. Install. Done.', style: GoogleFonts.plusJakartaSans(fontSize: 36, fontWeight: FontWeight.bold, color: const Color(0xFF0F172A))),
                const SizedBox(height: 8),
                Text('Get started in just a few simple steps.', style: TextStyle(color: Colors.grey[600], fontSize: 16)),
                const SizedBox(height: 40),
                _stepRow('1', 'Download', 'Get the installer for Windows.'),
                _stepRow('2', 'Install', 'Run the installer and follow steps.'),
                _stepRow('3', 'Launch', 'Open the app and start using it.'),
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
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    const SizedBox(width: 20),
                    TextButton(
                      onPressed: () {},
                      child: const Text('View system requirements →', style: TextStyle(color: Color(0xFF4F46E5))),
                    )
                  ],
                )
              ],
            ),
          ),
          if (isDesktop) const SizedBox(width: 40),
          if (isDesktop)
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(color: const Color(0xFFF1F5F9), borderRadius: BorderRadius.circular(16)),
                child: const Center(
                  child: Icon(Icons.laptop_mac, size: 240, color: Color(0xFF0F172A)),
                ),
              ),
            )
        ],
      ),
    );
  }

  static Widget _stepRow(String num, String title, String desc) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(radius: 16, backgroundColor: const Color(0xFFEEF2FF), child: Text(num, style: const TextStyle(color: Color(0xFF4F46E5), fontWeight: FontWeight.bold))),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF0F172A))),
              Text(desc, style: TextStyle(color: Colors.grey[600], fontSize: 14)),
            ],
          )
        ],
      ),
    );
  }
}

// --- 5. NEWSLETTER BANNER ---
class NewsletterSection extends StatelessWidget {
  const NewsletterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isDesktop = width > 750;

    return Container(
      width: double.infinity,
      color: const Color(0xFFF8FAFC),
      padding: EdgeInsets.symmetric(horizontal: width * 0.08, vertical: 40),
      child: Container(
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: const Color(0xFF0A0F24),
          borderRadius: BorderRadius.circular(16),
        ),
        child: isDesktop
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _buildNewsContent(),
              )
            : Column(
                children: _buildNewsContent().map((w) => Padding(padding: const EdgeInsets.symmetric(vertical: 12), child: w)).toList(),
              ),
      ),
    );
  }

  List<Widget> _buildNewsContent() {
    return [
      Row(
        children: [
          const Icon(Icons.mail, color: Color(0xFF6366F1), size: 32),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Stay in the loop', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
              Text('Get updates about new apps, features and more.', style: TextStyle(color: Colors.grey, fontSize: 14)),
            ],
          )
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 260,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                fillColor: const Color(0xFF1E293B),
                filled: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
              ),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(width: 12),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4F46E5),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 22),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: const Text('Subscribe', style: TextStyle(color: Colors.white)),
          )
        ],
      )
    ];
  }
}

// --- 6. DEEP FOOTER ---
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
              // Company branding info
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.change_history_rounded, color: Color(0xFF6366F1), size: 28),
                        const SizedBox(width: 8),
                        Text('AlvaIndigo', style: GoogleFonts.plusJakartaSans(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text('Building powerful apps that help you\nwork smarter and stay connected.', style: TextStyle(color: Colors.grey, fontSize: 14, height: 1.5)),
                  ],
                ),
              ),
              // Links columns grid
              if (isDesktop)
                const Expanded(
                  flex: 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FooterColumn(title: 'Product', links: ['Apps', 'Features', 'Download']),
                      FooterColumn(title: 'Company', links: ['About Us', 'Careers', 'Contact']),
                      FooterColumn(title: 'Resources', links: ['Docs', 'Support', 'Blog']),
                      FooterColumn(title: 'Download', links: ['Windows', 'macOS', 'Linux']),
                    ],
                  ),
                )
            ],
          ),
          const Divider(color: Colors.white10, height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('© 2027 AlvaIndigo. All rights reserved.', style: TextStyle(color: Colors.grey, fontSize: 12)),
              Row(
                children: const [
                  Text('Privacy Policy', style: TextStyle(color: Colors.grey, fontSize: 12)),
                  SizedBox(width: 20),
                  Text('Terms of Service', style: TextStyle(color: Colors.grey, fontSize: 12)),
                  SizedBox(width: 20),
                  Text('Cookies', style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              )
            ],
          )
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
        Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
        const SizedBox(height: 16),
        ...links.map((link) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Text(link, style: const TextStyle(color: Colors.grey, fontSize: 14)),
            ))
      ],
    );
  }
}