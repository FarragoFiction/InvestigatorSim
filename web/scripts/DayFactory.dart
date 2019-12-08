import 'DataPoint.dart';
import 'Day.dart';
import 'Question.dart';
import 'Response.dart';
abstract class DayFactory {


    //blood pressure normal, temperature normal
    static Day day1() {
        return new Day("Day 1", day1DataPoints(), day1Questions());
    }

    //blood pressure high, temperature normal
    static Day day2() {
        return new Day("Day 2", day2DataPoints(), day2Questions());

    }

    //blood pressure high, temperature normal
    static Day day3() {
        return new Day("Day 3", day3DataPoints(), day3Questions());

    }

    static String endingDay1 = "No. Never again. We culled them as soon as we could, I can't let what happened to HotPinkGard happen here. Its the only way we can survive.";
    static String endingDay2 = "The disease is progresing too quickly. It was a hard decision, but we can't risk it spreading to the rest of the population, even if it means we lack data.";
    static String endingDay3 = "We are all sons of bitches. We killed them all, each and every one. But it was too little, too late. It's spread, past any ability to quarantine. And now we don't even have the data on what the disease does past day three. We were fools.";
    static String triedEnding = "We did everything we could. The patients still died. They infected the medical staff. Who infected their family. Who infected everyone else. We have three day. That's how long the patients had. God save us all.";
    static String sabotogeEnding = "Everything went smoothly, my cover remains intact, and all patients converted successfully and spread the Life Force throughout the target city. We can easily scale this up to the rest of the cities on this planet. Praise Nidhogg.";


    static Map<String,DataPoint> day1DataPoints() {
      Map<String,DataPoint> dataPoints = new Map<String,DataPoint>();
      //only new values are valid since its the first day
      DataPoint temp = new DataPoint(DataPoint.TEMPERATURE, "Despite the flu like symptoms, the temperature of the patients remains normal.","ERROR THIS SHOULDNT HAPPEN","ERROR THIS SHOULDNT HAPPEN", false);
      dataPoints[temp.name]=(temp);

      DataPoint blood = new DataPoint(DataPoint.BLOOD_PRESSURE, "Blood pressure is normal. Note, do not allow Jack to draw blood again. The patients seem to dislike it.","ERROR THIS SHOULDNT HAPPEN","ERROR THIS SHOULDNT HAPPEN", false);
      dataPoints[blood.name]=(blood);
      return dataPoints;
    }

    static Map<String,DataPoint> day2DataPoints() {
        Map<String,DataPoint> dataPoints = new Map<String,DataPoint>();
        DataPoint temp = new DataPoint(DataPoint.TEMPERATURE, "Despite the flu like symptoms, the temperature of the patients remains normal.","ERROR THIS SHOULDNT HAPPEN","Body temperature remains within normal tolerances for all patients.", false);
        dataPoints[temp.name]=(temp);

        DataPoint blood = new DataPoint(DataPoint.BLOOD_PRESSURE, "Blood pressure is remarkably high. Why didn't we check this sooner?","ERROR THIS SHOULDNT HAPPEN","ERROR THIS SHOULDNT HAPPEN", false);
        dataPoints[blood.name]=(blood);
        return dataPoints;
    }

    static Map<String,DataPoint> day3DataPoints() {
        Map<String,DataPoint> dataPoints = new Map<String,DataPoint>();
        DataPoint temp = new DataPoint(DataPoint.TEMPERATURE, "Despite the flu like symptoms, the temperature of the patients remains normal.","ERROR THIS SHOULDNT HAPPEN","Body temperature remains within normal tolerances for all patients.", false);
        dataPoints[temp.name]=(temp);

        DataPoint blood = new DataPoint(DataPoint.BLOOD_PRESSURE, "Blood pressure is remarkably high. Could this be the break we've been hoping for?","Blood pressure has suddenly spiked to worrying levels. What has changed in the past day or so?","Blood pressure continues to spike to worrying levels. Blood volume, however, somehow appears reduced.", false);
        dataPoints[blood.name]=(blood);

        DataPoint death = new DataPoint(DataPoint.DEATH, "We have decided to cull the patients, to prevent further spread of this mysterious disease.","ERROR","ERROR", true);
        dataPoints[death.name]=(death);
        return dataPoints;
    }

    static List<Question> day1Questions() {
      List<Question> questions = new List<Question>();
      Question question1 = new Question("Should we take the patients temperature, Investigator?", Question.INTERN_JIMMY);
      new Response(question1, "Yes", "I wonder if I can remember how the thermometer works?", <String>[DataPoint.TEMPERATURE],1);
      new Response(question1, "No", "Phew, now I don't have to ask Jack how the thermometer works. He's scary.", <String>[],0);

      Question question2 = new Question("Should we check the patients blood pressure, Investigator?", Question.GENOCIDE_JACK);
      new Response(question2, "Yes", "Knife goes in. Blood comes out. I will monitor how strong the spray is.", <String>[DataPoint.BLOOD_PRESSURE],1);
      new Response(question2, "No", "...I suppose you are the expert.", <String>[],0);

      questions.add(question1);
      questions.add(question2);
      return questions;
    }

    static List<Question> day2Questions() {
        List<Question> questions = new List<Question>();
        Question question1 = new Question("I'm supposed to ask you if we should check the patients blood pressure today, Investigator?", Question.INTERN_JIMMY);
        new Response(question1, "Yes", "Phew, this one seems a lot easier than temperature.", <String>[DataPoint.BLOOD_PRESSURE],1);
        new Response(question1, "No", "Oh...Okay...", <String>[],0);

        Question question2 = new Question("Ugh. Should I check the patients temperature, Investigator?", Question.GENOCIDE_JACK);
        new Response(question2, "Yes", "So boring. There's not even a thing to stab them with.", <String>[DataPoint.TEMPERATURE],1);
        new Response(question2, "No", "Whatever.", <String>[],0);

        questions.add(question1);
        questions.add(question2);
        return questions;
    }

    static List<Question> day3Questions() {
        List<Question> questions = new List<Question>();
        Question question1 = new Question("I'm ready to check the patients blood pressure, today, Investigator!", Question.INTERN_JIMMY);
        new Response(question1, "Yes", "I can do this!", <String>[DataPoint.TEMPERATURE],1);
        new Response(question1, "No", "Phew, now I don't have to ask Jack how the thermometer works. He's scary.", <String>[],0);

        Question question2 = new Question("Should we kill the patients, Investigator?", Question.GENOCIDE_JACK);
        new Response(question2, "Yes", "Finally, some good fucking content", <String>[DataPoint.DEATH],88);
        new Response(question2, "No", "...I suppose you are the expert.", <String>[],0);

        questions.add(question1);
        questions.add(question2);
        return questions;
    }

}