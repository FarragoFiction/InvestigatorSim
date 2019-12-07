/*
TODO:
each day has the stats that the infected have (such as fever temperature)
it also has a list of questions the investigator can be asked by his team
and it will have (at play time) a list of stats the investigator found out about on this day
total points in a day is how many things you can afford to do before its time to sleep
 */

import 'DataPoint.dart';
import 'Question.dart';

class Day {
    String title;
    List<DataPoint> datapoints = new List<DataPoint>();
    //Question order is random
    List<Question> questions = new List<Question>();
    List<String> datapointsGathered = new List<String>();

    Day(this.title, this.datapoints, this.questions);

    //when you're asked a question, remove it from the pile no matter the response
    bool outOfQuestions() {
        return questions.isEmpty;
    }

    Question getNextQuestion() {
        questions.shuffle();
        return questions.removeLast();
    }
}