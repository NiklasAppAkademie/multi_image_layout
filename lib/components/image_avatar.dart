import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageAvatar extends StatefulWidget {
  const ImageAvatar({super.key});

  @override
  State<ImageAvatar> createState() => _ImageAvatarState();
}

class _ImageAvatarState extends State<ImageAvatar> {
  String image = "";

  Future pickImage() async {
    final tempImage = await ImagePicker().pickImage(
        source: ImageSource.camera, preferredCameraDevice: CameraDevice.rear);

    setState(() {
      image = tempImage?.path ?? "";
    });
  }

  void deleteImage() {
    setState(() {
      image = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => pickImage(),
      onLongPress: () => deleteImage(),
      child: Container(
        width: 200,
        height: 200,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            shape: BoxShape.circle, border: Border.all(color: Colors.black)),
        child: Center(
            child: image == ""
                ? const Icon(
                    Icons.person,
                    size: 100,
                  )
                : Image.file(
                    File(image),
                    fit: BoxFit.cover,
                    width: 200,
                  )),
      ),
    );
  }
}
