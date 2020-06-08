import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

//This class loads the respective json file based on the function call made.
class DataService{
  
  // This function loads the easy.json data from our assets folder
  // It contains 20 easy questions
  Future<String> getEasyQuestions() async{
    return await rootBundle.loadString('assets/easy.json');
  }

  // This function loads the medium.json data from our assets folder
  // It contains 20 medium questions
  Future<String> getMediumQuestions() async{
    return await rootBundle.loadString('assets/medium.json');
  }

  // This function loads the hard.json data from our assets folder
  // It contains 20 hard questions
  Future<String> getHardQuestions() async{
    return await rootBundle.loadString('assets/hard.json');
  }



}