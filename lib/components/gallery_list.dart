import 'package:flutter/material.dart';
import 'package:multi_image_layout/components/gallery_tile.dart';

class GalleryList extends StatefulWidget {
  final List<String> images;
  const GalleryList({super.key, required this.images});

  @override
  State<GalleryList> createState() => _GalleryListState();
}

class _GalleryListState extends State<GalleryList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: GridView.count(
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          crossAxisCount: 3,
          children:
              widget.images.map((image) => GalleryTile(image: image)).toList(),
        ))
      ],
    );
  }
}
