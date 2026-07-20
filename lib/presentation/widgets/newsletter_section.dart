import 'package:flutter/material.dart';

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
                children: _buildNewsContent()
                    .map(
                      (w) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: w,
                      ),
                    )
                    .toList(),
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
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Stay in the loop',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                'Get updates about new apps, features and more.',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
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
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Subscribe',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ];
  }
}
