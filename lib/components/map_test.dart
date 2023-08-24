import 'package:flutter/material.dart';

class MapTest extends StatefulWidget {
  const MapTest({super.key});

  @override
  State<MapTest> createState() => _MapTestState();
}

class _MapTestState extends State<MapTest> {
  List<String> strings = ["Test", "App Akademie", "User"];

  void mapStrings() {
    strings.map((gracia) => Text(gracia));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: strings.map((gracia) => Text(gracia)).toList(),
    );
  }
}
