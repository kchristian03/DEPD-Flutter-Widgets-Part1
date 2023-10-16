
import 'package:flutter/cupertino.dart';

class RoundImageState  {
  Widget roundedImage(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        imagePath,
        width: 200.0,
        height: 100.0,
        fit: BoxFit.fill,
      ),
    );
  }
}
