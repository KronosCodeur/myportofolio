
import 'package:flutter/cupertino.dart';

class ScreenSizeUtils{
  static double calculateHeight(double height,screenHeight){
    height = (screenHeight*(height/screenHeight*100));
    return height;
  }
  static double calculateProportionalWidth(double width, BuildContext context) {
    // On obtient la largeur ou la hauteur de l'écran en fonction de l'orientation de l'appareil
    double screenWidth = MediaQuery.of(context).size.height;
    return width / 375 * screenWidth; // 375 est la largeur de référence utilisée pour les designs
  }
  static double calculateProportionalHeight(double height, BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return height / 812 * screenHeight; // 812 est la hauteur de l'iPhone X en points
  }

}