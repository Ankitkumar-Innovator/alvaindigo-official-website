//Main screen orchestrator

import 'package:alvaindigo_website/presentation/steps_section.dart';
import 'package:alvaindigo_website/presentation/widgets/footer_section.dart';
import 'package:alvaindigo_website/presentation/widgets/newsletter_section.dart';
import 'package:alvaindigo_website/presentation/widgets/pillars_section.dart';
import 'package:alvaindigo_website/presentation/widgets/product_grid_section.dart';
import 'package:flutter/material.dart';
import 'widgets/hero_section.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF070B1E),
      body: SelectionArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroSection(),
              ProductGridSection(),
              PillarsSection(),
              StepsSection(),
              NewsletterSection(),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
