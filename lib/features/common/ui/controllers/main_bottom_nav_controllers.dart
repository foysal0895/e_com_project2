import 'package:get/get.dart';

class MainBottomNavController extends GetxController{
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void changeIndex(int index) {
    if(index==_selectedIndex) return; // Prevent re-selection of the same index
    _selectedIndex = index;
    update(); // Notify listeners to rebuild the UI
  }
 void moveToCategory() {
     changeIndex(1); // Assuming index 1 is for the category screen

  }

  void moveToHome() {
    changeIndex(0); // Assuming index 0 is for the home screen
  }
}