import 'package:flutter/material.dart';
import 'custom_container.dart';
import 'resources/image_manger.dart';

class StackSection extends StatelessWidget {
  final String selectedImage;
  final void Function(String) onImageTap;
  final bool isFavorite;
  final VoidCallback onFavoriteTap;

  const StackSection({
    super.key,
    required this.selectedImage,
    required this.onImageTap,
    required this.isFavorite,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      ImageManager.firstImage,
      ImageManager.secondImage,
      ImageManager.thirdImage,
      ImageManager.fourthImage,
    ];

    return SizedBox(
      height: 450,
      child: Stack(
        children: [
          _buildImageContainer(),
          _buildImageSelectors(imageList),
          _buildBackButton(),
          _buildFavoriteButton(),
        ],
      ),
    );
  }

  Widget _buildImageContainer() {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        height: 450,
        width: 300,
        decoration: const BoxDecoration(
          color: Color(0xFF2B475E),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: 0.7,
            child: Image.asset(
              selectedImage,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageSelectors(List<String> imageList) {
    return Positioned(
      top: 120,
      left: 20,
      child: Column(
        //List of containers
        children: imageList.map((img) {
          return CustomContainer(
            imageUrl: img,
            isSelected: selectedImage == img,
            onTap: () => onImageTap(img),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildBackButton() {
    return Positioned(
      top: 40,
      left: 20,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: const Size(45, 40),
          maximumSize: const Size(50, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {}, // Add your back logic here
        child: const Icon(Icons.arrow_back, color: Colors.black),
      ),
    );
  }

  Widget _buildFavoriteButton() {
    return Positioned(
      top: 40,
      right: 20,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: const Size(45, 40),
          maximumSize: const Size(50, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onFavoriteTap,
        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
          size: 24,
          color: Colors.red,
        ),
      ),
    );
  }
}
