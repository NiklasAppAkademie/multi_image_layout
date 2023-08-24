import 'dart:io';

import 'package:flutter/material.dart';
import 'package:multi_image_layout/components/image_details.dart';

class GalleryTile extends StatelessWidget {
  final String image;

  const GalleryTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ImageDetails(image: image)));
      },
      child: Image.file(
        File(image),
        width: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}
