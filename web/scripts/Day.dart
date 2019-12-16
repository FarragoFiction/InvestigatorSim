/*
TODO:
each day has the stats that the infected have (such as fever temperature)
it also has a list of questions the investigator can be asked by his team
and it will have (at play time) a list of stats the investigator found out about on this day
total points in a day is how many things you can afford to do before its time to sleep
 */

import 'DataPoint.dart';
import 'Game.dart';
import 'Question.dart';
import 'Response.dart';

class Day {
    String title;
    Map<String,DataPoint> datapoints = new Map<String,DataPoint>();
    //Question order is random
    List<Question> questions = new List<Question>();
    List<String> datapointsGathered = new List<String>();

    Day(this.title, this.datapoints, this.questions);

    //just the body of the report
    String report(List<Day> previousDays, Game game) {
        previousDays = new List.from(previousDays.reversed);
        String ret = "";
        for(String dp in datapointsGathered) {
            game.hasMadeAtLeastOneTest = true;
            print("checking gathered datapoint $dp");
            Day day = getPrevDataPoint(dp, previousDays);
            if(day == null) {
                ret = "$ret ${datapoints[dp].newComment}";
            }else if(day.getDataPoint(dp).valueAbnormal){
                ret = "$ret ${datapoints[dp].commentLastAbnormal}";
            }else{
                ret = "$ret ${datapoints[dp].commentLastNormal}";
            }
            if(datapoints[dp].valueAbnormal) game.abnormalitiesFound ++;
            if(datapoints[dp].name == DataPoint.DEATH) {
                print("noting killed patients");
                game.dayPatientsCulled = this;
            }
        }
        if(ret.isEmpty) {
            ret = "We continue to make no progress figuring out this mysterious disease.";
        }
        return ret;
    }

    DataPoint getDataPoint(String key) {
        return datapoints[key];
    }

    static Day getPrevDataPoint(String datapointname, List<Day> prev) {
        Iterable<Day> previousDays = prev.reversed;
        for(Day day in previousDays) {
            if(day.datapointsGathered.contains(datapointname)) {
                return day;
            }
        }
        return null;
    }

    void processResponse(Response response) {
        response.trueVariables.forEach((String stat) => datapointsGathered.add(stat));
    }

    //when you're asked a question, remove it from the pile no matter the response
    bool outOfQuestions() {
        return questions.isEmpty;
    }

    Question getNextQuestion() {
        questions.shuffle();
        return questions.removeLast();
    }

}