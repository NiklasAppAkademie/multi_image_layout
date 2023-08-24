import 'package:flutter/material.dart';
import 'package:multi_image_layout/components/gallery_list.dart';
import 'package:multi_image_layout/components/image_avatar.dart';
import 'package:multi_image_layout/style/text_style.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MaterialApp(home: App()));
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<String> images = [];

  Future pickImages() async {
    final tempImages = await ImagePicker().pickMultiImage();

    setState(() {
      images = tempImages.map((tempImage) => tempImage.path).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Demo App"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: pickImages,
          child: Icon(Icons.add),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: ImageAvatar(),
            ),
            Text(
              "Username",
              style: kHeadline,
            ),
            Text(
              "Berlin, Germany",
              style: kSubHeadline,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Gallery",
              style: kHeadline,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                height: 30,
              ),
            ),
            Expanded(
                child: GalleryList(
              images: images,
            ))
          ],
        ));
  }
}
