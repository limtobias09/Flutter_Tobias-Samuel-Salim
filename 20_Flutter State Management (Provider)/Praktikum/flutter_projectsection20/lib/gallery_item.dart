import 'package:flutter/material.dart';

class GalleryItem {
  final Image image;
  final Function(BuildContext, ImageProvider) onYesPressed;
  final Function(BuildContext) onNoPressed;

  GalleryItem({required this.image, required this.onYesPressed, required this.onNoPressed});
}