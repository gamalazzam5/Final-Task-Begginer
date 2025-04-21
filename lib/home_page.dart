import 'package:flutter/material.dart';
import 'package:task1_ieee/bottom_section.dart';
import 'package:task1_ieee/color_container.dart';
import 'package:task1_ieee/stack_section.dart';
import 'resources/text_styles.dart';

import 'resources/image_manger.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedImage = ImageManager.firstImage;
  bool isFavorite = false;

  void updateSelectedImage(String newImage) {
    setState(() {
      selectedImage = newImage;
    });
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              StackSection(
                selectedImage: selectedImage,
                onImageTap: updateSelectedImage,
                isFavorite: isFavorite,
                onFavoriteTap: toggleFavorite,
              ),
              SizedBox(height: 20),
              BottomSection()
            ],
          ),
        ),
      ),
    );
  }
}
