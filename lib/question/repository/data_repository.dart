import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:teamstommobile/question/data_service/data_service.dart';
import 'package:teamstommobile/question/models/question.dart';

//This class decides which question type we want to load based on the type of parameter passed to the getQuestiions function
//paramter types: "EASY" - Easy questions, "MEDIUM" - Medium Questions, "HARD" - Hard Questions
class DataRepository {
  DataService _dataService = DataService();

  Future<List<Question>> getQuestions(String quizType) async {
    switch (quizType) {

      //Handles the case for easy questions
      case "EASY":
        {
          String easyJsonString = await _dataService.getEasyQuestions();
          Map<String, dynamic> easyJsonMap = jsonDecode(easyJsonString);
          List<Question> tempQuestionList = [];

          easyJsonMap['results'].forEach((question) {
            tempQuestionList.add(Question.fromJson(question));
          });

          // print("I am a :${tempQuestionList.length}");
          
          //Shuffling the data every call and returning 10 random easy questions
          List<Question> finalQuestionList =
              (tempQuestionList.toList()..shuffle()).take(10).toList();

          return finalQuestionList;
        }
        break;



      //Handles the case for medium questions
      case "MEDIUM":
        {
          String mediumJsonString = await _dataService.getMediumQuestions();
          Map<String, dynamic> easyJsonMap = jsonDecode(mediumJsonString);
          List<Question> tempQuestionList = [];


          easyJsonMap['results'].forEach((question) {
            tempQuestionList.add(Question.fromJson(question));
          });


          // print("I am a :${tempQuestionList.length}");

          //Shuffling the data every call and returning 10 random medium questions
          List<Question> finalQuestionList =
              (tempQuestionList.toList()..shuffle()).take(10).toList();

          return finalQuestionList;
        }
        break;

      //Handles the case for hard questions
      case "HARD":
        {
          String hardJsonString = await _dataService.getHardQuestions();
          Map<String, dynamic> hardJsonMap = jsonDecode(hardJsonString);
          List<Question> tempQuestionList = [];


          hardJsonMap['results'].forEach((question) {
            tempQuestionList.add(Question.fromJson(question));
          });


          // print("I am a :${tempQuestionList.length}");

          //Shuffling the data every call and returning 10 random hard questions
          List<Question> finalQuestionList =
              (tempQuestionList.toList()..shuffle()).take(10).toList();

          return finalQuestionList;
        }
        break;

      default:
        {
          print("");
        }
        break;
    }
  }
}
