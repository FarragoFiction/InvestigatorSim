/*
TODO:
each day has the stats that the infected have (such as fever temperature)
it also has a list of questions the investigator can be asked by his team
and it will have (at play time) a list of stats the investigator found out about on this day
 */

import 'DataPoint.dart';
import 'Question.dart';

class Day {
    String title;
    List<DataPoint> datapoints = new List<DataPoint>();
    List<Question> questions = new List<Question>();
    List<String> datapointsGathered = new List<String>();
}