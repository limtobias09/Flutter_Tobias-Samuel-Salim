import 'package:flutter/material.dart';
import 'gallery_item.dart';

class GalleryProvider extends ChangeNotifier {
  final List<GalleryItem> _myGalleryItems = [
    GalleryItem(
    image: Image.asset('assets/images/image1.jpg', fit: BoxFit.cover),
    onYesPressed: (BuildContext context, ImageProvider image) {
      Navigator.pushNamed(
        context, '/3', arguments: image
        );
    },
    onNoPressed: (BuildContext context) {
      Navigator.pop(context);
    },
  ),
  GalleryItem(
    image: Image.asset('assets/images/image2.jpg', fit: BoxFit.cover),
    onYesPressed: (BuildContext context, ImageProvider image) {
      Navigator.pushNamed(
        context, '/3', arguments: image
        );
    },
    onNoPressed: (BuildContext context) {
      Navigator.pop(context);
    },
  ),
  GalleryItem(
    image: Image.asset('assets/images/image3.jpg', fit: BoxFit.cover),
    onYesPressed: (BuildContext context, ImageProvider image) {
      Navigator.pushNamed(
        context, '/3', arguments: image
        );
    },
    onNoPressed: (BuildContext context) {
      Navigator.pop(context);
    },
  ),
  GalleryItem(
    image: Image.asset('assets/images/image4.jpg', fit: BoxFit.cover),
    onYesPressed: (BuildContext context, ImageProvider image) {
      Navigator.pushNamed(
        context, '/3', arguments: image
        );
    },
    onNoPressed: (BuildContext context) {
      Navigator.pop(context);
    },
  ),
  GalleryItem(
    image: Image.asset('assets/images/image5.jpg', fit: BoxFit.cover),
    onYesPressed: (BuildContext context, ImageProvider image) {
      Navigator.pushNamed(
        context, '/3', arguments: image
        );
    },
    onNoPressed: (BuildContext context) {
      Navigator.pop(context);
    },
  ),
  GalleryItem(
    image: Image.asset('assets/images/image6.jpg', fit: BoxFit.cover),
    onYesPressed: (BuildContext context, ImageProvider image) {
      Navigator.pushNamed(
        context, '/3', arguments: image
        );
    },
    onNoPressed: (BuildContext context) {
      Navigator.pop(context);
    },
  ),
  GalleryItem(
    image: Image.asset('assets/images/image7.jpg', fit: BoxFit.cover),
    onYesPressed: (BuildContext context, ImageProvider image) {
      Navigator.pushNamed(
        context, '/3', arguments: image
        );
    },
    onNoPressed: (BuildContext context) {
      Navigator.pop(context);
    },
  ),
  GalleryItem(
    image: Image.asset('assets/images/image8.jpg', fit: BoxFit.cover),
    onYesPressed: (BuildContext context, ImageProvider image) {
      Navigator.pushNamed(
        context, '/3', arguments: image
        );
    },
    onNoPressed: (BuildContext context) {
      Navigator.pop(context);
    },
  ),

];


  List<GalleryItem> get myGalleryItems => _myGalleryItems;

}
