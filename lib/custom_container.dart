import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;
  final bool isSelected;

  const CustomContainer({
    super.key,
    required this.imageUrl,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          border: Border.all(
            color: isSelected ? Colors.red : Colors.grey,
            width: 2,
          ),
        ),
        child: Image.asset(imageUrl, height: 50, width: 50),
      ),
    );
  }
}
