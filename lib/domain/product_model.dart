//The core blueprint of what a product is

import 'package:flutter/material.dart';

class ProductModel {
  final String title;
  final String description;
  final IconData icon;
  final Color accentColor;
  final bool isUpcoming;
  final String? downloadUrl;

  const ProductModel({
    required this.title,
    required this.description,
    required this.icon,
    required this.accentColor,
    this.isUpcoming = false,
    this.downloadUrl,
  });
}
