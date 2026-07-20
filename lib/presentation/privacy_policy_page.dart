import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isDesktop = width > 900;

    return Scaffold(
      backgroundColor: const Color(0xFF070B1E), // Deep dark theme background
      appBar: AppBar(
        backgroundColor: const Color(0xFF030616),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white70,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'PRIVACY MANDATE',
          style: GoogleFonts.plusJakartaSans(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
      ),
      body: SelectionArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header Banner
              Container(
                width: double.infinity,
                color: const Color(0xFF030616),
                padding: EdgeInsets.symmetric(
                  horizontal: isDesktop ? width * 0.15 : 24,
                  vertical: 60,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E1B4B),
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: const Color(0xFF6366F1).withAlpha(100),
                        ),
                      ),
                      child: Text(
                        'GREEN & LOCAL-FIRST OPERATIONAL CHARTER',
                        style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xFF818CF8),
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Alva Indigo Labs Privacy Policy',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: isDesktop ? 42 : 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Alva Indigo Labs ("we," "our," or "us") operates a decentralized, local-first, peer-to-peer (P2P) cross-platform software and IoT hardware ecosystem.',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),

              // Policy Body Content
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isDesktop ? width * 0.15 : 24,
                  vertical: 60,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Manifesto section
                    _buildManifestoCard(),
                    const SizedBox(height: 48),

                    // 1. Data Minimization
                    _buildSectionHeader(
                      '1. Data Minimization & Local Disk Isolation',
                    ),
                    _buildBulletPoint(
                      Icons.cloud_off_rounded,
                      'Zero Centralized Clouds',
                      'We do not operate, own, or lease centralized cloud databases to capture, aggregate, or profile your personal data, app usage habits, or behavioral analytics.',
                    ),
                    _buildBulletPoint(
                      Icons.inventory_2_outlined,
                      'Sandbox Security',
                      'All application assets, databases, user configurations, and transaction records are stored strictly within the secure local storage directory of your physical device.',
                    ),
                    _buildBulletPoint(
                      Icons.no_accounts_rounded,
                      'Account-Free Operation',
                      'Access to our software utilities requires no registration, identity disclosure, phone linking, or authentication with remote servers.',
                    ),
                    const SizedBox(height: 40),

                    // 2. Omni-Channel P2P
                    _buildSectionHeader(
                      '2. Omni-Channel P2P Transport & Fallback Topologies',
                    ),
                    const Text(
                      'To maximize communication resilience during infrastructure disruptions, network blackouts, or off-grid scenarios, our transport stack manages data dynamically across multiple physical mediums using go-libp2p:',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildLayerCard(
                      'Layer 1 (Standard IP)',
                      'Traditional Local Area Network (LAN) or secure wide-area channels are utilized to bootstrap peer endpoints and form direct, cryptographically sealed pipelines.',
                    ),
                    _buildLayerCard(
                      'Layer 2 (Wi-Fi Direct / P2P)',
                      'If an active infrastructure router is absent, our platform coordinates ad-hoc, high-bandwidth device-to-device connections directly via Wi-Fi hardware registers.',
                    ),
                    _buildLayerCard(
                      'Layer 3 (Bluetooth Classic / LE)',
                      'Low-frequency, extreme close-range communication falls back to low-power Bluetooth channels for metadata exchanges and state synchronizations.',
                    ),
                    _buildLayerCard(
                      'Tor Network Routing',
                      'Selected public-facing or external endpoints leverage multi-hop Tor onion routing to mask device IP addresses, locations, and structural network metadata.',
                    ),
                    _buildLayerCard(
                      'Delay-Tolerant Networking (DTN)',
                      'For highly volatile or intermittent topologies, we utilize a decentralized "store-carry-forward" protocol. Encrypted payloads may be cached locally inside secure storage buffers and securely hopped across intermediate peer nodes. These intermediate nodes act as blind relays and cannot decrypt, alter, or view your payloads.',
                    ),
                    const SizedBox(height: 40),

                    // 3. Edge AI
                    _buildSectionHeader(
                      '3. Edge AI & On-Device Local LLM Orchestration',
                    ),
                    const Text(
                      'Our ecosystem utilizes quantized, local artificial intelligence models operating strictly at the device edge to automate productivity workflows:',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildBulletPoint(
                      Icons.memory_rounded,
                      'Zero Cloud Inference',
                      'All AI inferences, text processing, search lookups, and orchestration tasks are executed locally on your device\'s native CPU/GPU/NPU using highly optimized, low-power quantized weights. No prompt data, context windows, or outputs are ever transmitted to external web services.',
                    ),
                    _buildBulletPoint(
                      Icons.hub_outlined,
                      'Deep App Linking Security',
                      'The local AI agent functions as an offline orchestrator, routing contextual actions safely between our ecosystem applications using secure, local Deep App Links. Inter-app communication occurs entirely within the device’s operating system memory space.',
                    ),
                    const SizedBox(height: 40),

                    // 4. IoT boundary
                    _buildSectionHeader(
                      '4. IoT Hardware & Environmental Sensing Connections',
                    ),
                    _buildBulletPoint(
                      Icons.router_rounded,
                      'Local Hardware Boundary',
                      'Data exchanged with our custom IoT equipment is transmitted entirely over local hardware loops (Bluetooth LE, local network sockets, or physical serial connections).',
                    ),
                    _buildBulletPoint(
                      Icons.analytics_outlined,
                      'No Remote Telemetry',
                      'Environmental sensor logs, hardware states, and telemetry data collected by connected IoT components remain isolated to the local mesh and are never uploaded to remote telemetry clouds.',
                    ),
                    const SizedBox(height: 40),

                    // 5. Green computing
                    _buildSectionHeader(
                      '5. Green Software & Computing Commitments',
                    ),
                    _buildBulletPoint(
                      Icons.eco_rounded,
                      'Minimal Power Draw',
                      'By discarding persistent cloud sync polling, cloud database handshakes, and remote telemetry pings, we drastically drop device radio battery drainage and idle CPU cycles.',
                    ),
                    _buildBulletPoint(
                      Icons.speed_rounded,
                      'Algorithmic Efficiency',
                      'Our edge processing models and compiled Go binaries are engineered to run within narrow memory footprints, preventing thermal throttling and extending the physical lifespan of consumer mobile and desktop hardware.',
                    ),
                    const SizedBox(height: 40),

                    // 6. Permissions
                    _buildSectionHeader('6. Required Hardware Permissions'),
                    _buildPermissionRow(
                      'Local Network & Wi-Fi State',
                      'Necessary to discover and bootstrap nearby mesh nodes via mDNS protocols.',
                    ),
                    _buildPermissionRow(
                      'Bluetooth Utilities',
                      'Required to execute proximity validation and establish low-power local sync links.',
                    ),
                    _buildPermissionRow(
                      'File System Access',
                      'Strictly limited to writing your encrypted local app databases and handling local file transport tasks.',
                    ),
                    const SizedBox(height: 60),

                    // Footer Contact Area
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(32),
                      decoration: BoxDecoration(
                        color: const Color(0xFF0A0F24),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Governance and Contact',
                            style: GoogleFonts.plusJakartaSans(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'For detailed inquiries regarding our green cross-platform architecture, go-libp2p implementation, or edge compute engines, reach out directly to our open-source development initiative:',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'Alva Indigo Labs',
                            style: TextStyle(
                              color: Colors.grey[200],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Email: dev.alvaindigo@gmail.com',
                            style: TextStyle(color: Color(0xFF6366F1)),
                          ),
                          const Text(
                            'Website: alvaindigo.com',
                            style: TextStyle(color: Colors.white54),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper Elements to abstract architecture design boilerplate
  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 20),
      child: Text(
        title,
        style: GoogleFonts.plusJakartaSans(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildManifestoCard() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1E1B4B), Color(0xFF0F172A)],
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF4F46E5).withAlpha(80)),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.eco_outlined, color: Color(0xFF10B981), size: 28),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Green, Privacy-First, Local-First Mandate',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Unlike centralized Web2 infrastructures that rely on high-emission, carbon-heavy server farms to process and mine user information, our architecture operates under a Green, Privacy-First, Local-First Mandate. Your data never leaves your physical control unless explicitly routed by you through encrypted peer networks.',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(IconData icon, String title, String body) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: const Color(0xFF6366F1), size: 20),
          const SizedBox(width: 16),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  color: Colors.white70,
                ),
                children: [
                  TextSpan(
                    text: '$title: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(text: body),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLayerCard(String layerTitle, String body) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF0F172A),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white.withAlpha(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            layerTitle,
            style: GoogleFonts.plusJakartaSans(
              color: const Color(0xFF38BDF8),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            body,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPermissionRow(String permission, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.check_circle_outline_rounded,
            color: Color(0xFF10B981),
            size: 18,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  color: Colors.grey,
                ),
                children: [
                  TextSpan(
                    text: '$permission — ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(text: description),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
