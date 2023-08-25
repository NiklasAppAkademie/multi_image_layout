import 'package:flutter/material.dart';
import 'package:multi_image_layout/components/gallery_tile.dart';

class GalleryList extends StatelessWidget {
  final List<String> images;
  const GalleryList({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: GridView.count(
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          crossAxisCount: 3,
          children: images.map((image) => GalleryTile(image: image)).toList(),
        ))
      ],
    );
  }
}
