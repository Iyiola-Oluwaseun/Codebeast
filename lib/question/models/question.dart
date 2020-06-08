import 'package:flutter/material.dart';

//This class is the model class for our questions, it helps us decode our json to a question class.
class Question{
  
  final String question_body;
  final String correct_answer;
  final String incorrect_answer;
  
  Question({@required this.question_body, @required this.correct_answer, @required this.incorrect_answer});
    
  
  factory Question.fromJson(Map<String, dynamic> json) => Question(
        question_body: json["question"] == null ? null : json["question"],
        correct_answer: json["correct_answer"] == null ? null : json["correct_answer"],
        incorrect_answer: json["incorrect_answers"] == null ? null : json["incorrect_answers"]
        
    );
  
  

  
}