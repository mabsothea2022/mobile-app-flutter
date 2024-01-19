import 'package:app2/state_manaagement/language_constant.dart';
import 'package:flutter/material.dart';

class LanguageLogin extends ChangeNotifier {
  Language _lang = Language();
  Language get lang => _lang;

  // Method for change language to khmer
  void ChangeToKhmer() {
    _lang = Khmer();
    notifyListeners();
  }

  // Method for change language to English
  void ChangeToEnglish() {
    _lang = Language();
    notifyListeners();
  }

  // Method for change language to Chines
  void ChangeToChines() {
    _lang = Chine();
    notifyListeners();
  }
}
