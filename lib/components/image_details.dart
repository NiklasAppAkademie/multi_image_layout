import 'dart:io';

import 'package:flutter/material.dart';

class ImageDetails extends StatelessWidget {
  final String image;

  const ImageDetails({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Image.file(File(image)),
    );
  }
}
