//Local static data source for products

import 'package:flutter/material.dart';
import '../domain/product_model.dart';

class ProductRepository {
  static const List<ProductModel> products = [
    ProductModel(
      title: 'Glimpse',
      description:
          'Simple and light weight photo snap app with location stamp.',
      icon: Icons.camera_alt_outlined,
      accentColor: Color(0xFF6366F1),
      isUpcoming: true,
    ),
    /*ProductModel(
      title: 'ClipBridge',
      description:
          'Sync files, texts, images and more between your android and windows peers seamlessly.',
      icon: Icons.sync,
      accentColor: Color(0xFFF97316),
      isUpcoming: true,
    ),*/
    /*ProductModel(
      title: 'ChronoTask',
      description: 'Manage your task and deadlines efficiently',
      icon: Icons.notification_important,
      accentColor: Color(0xFF3B82F6),
      isUpcoming: true,
    ),*/

    // Upcoming placeholder demo:
  ];
}
