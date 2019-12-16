import 'DataPoint.dart';
import 'Day.dart';
import 'Question.dart';
import 'Response.dart';
abstract class DayFactory {

    //TODO make test page that just lists all days and stats/questions out

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

    //blood pressure high, temp normal, MASSIVE metabolism spike
    static Day day4() {
        return new Day("Day 4", day4DataPoints(), day4Questions());

    }

    static Day day5() {
        return new Day("Day 5", day5DataPoints(), day5Questions());

    }

    static Day day6() {
        return new Day("Day 6", day6DataPoints(), day6Questions());

    }

    static Day day7() {
        return new Day("Day 7", day7DataPoints(), day7Questions());

    }

    static Day day8() {
        return new Day("Day 8", day8DataPoints(), day8Questions());

    }

    static Day altDay7() {
        return new Day("Day 7", day7AltDataPoints(), day7AltQuestions());

    }

    static Day altDay8() {
        return new Day("Day 8", day8AltDataPoints(), day8AltQuestions());

    }

    static String endingDay1 = "No. Never again. We culled them as soon as we could, I can't let what happened to HotPinkGard happen here. Its the only way we can survive.";
    static String endingDay2 = "The disease is progresing too quickly. It was a hard decision, but we can't risk it spreading to the rest of the population, even if it means we lack data. We can only hope that reports that other cities have had a scattering of victims is panic talking, not fact.";
    static String endingDay3 = "We are all sons of bitches. We killed them all, each and every one. But it was too little, too late. It's spread, past any ability to quarantine. And now we don't even have the data on what the disease does past day three. We were fools.";
    static String triedEnding = "We did everything we could. The patients still died. They infected the medical staff. Who infected their family. Who infected everyone else. We have three days. That's how long the patients had. God save us all.";
    static String sabotogeEnding = "Everything went smoothly, my cover remains intact, and all patients converted successfully and spread the Life Force throughout the target city. We can easily scale this up to the rest of the cities on this planet. Praise Nidhogg.";
    static String sabotogeEndingFailure = "I regret nothing more than being caught in my subpar sabatoge. Nidhogg will convert you all.";
    static String hungerEnding = "The subjects are all dead. Autopsy reveals profound loss of tissue, both fatty and muscular, as well as abnormalities in the veins. Despite the clear and obvious signs of starvation, no sepisis or signs other co-occurant infections or diseases are present. <br><br>Subjects additionally went only four days of standard Fasting Protocol, a significantly shorter period of time than is required for starvation to set in, much less prove fatal. Just 24 hours ago, they had normal musculature and fat deposits. Just what was happening to their metabolism at the end? Given the reports of infection in other cities world wide, I fear we'll find out before too long...   ";
    static String thirstEnding = "... This is a formal request to downcycle all relevant staff and complete a full and thorough investigation into how such an egregious display of negligence and incompetance could happen.<br> <br>I should not be required to remind staff that living creatures need water to survive, doubly so if they are sick. We are medical proffesionals here, not inebriated zoo keepers. All subjects have died, painfully, of thirst. ";
    static String cureEnding = "In what I can, in my experienced medical opinion, only call a 'miracle', the patients were cured on day 6 of their infection. We've made sure to spread the knowledge to all cities affected by the outbreak.  Yes, the psychological and physiological changes are off putting, but the patients are ALIVE when they seemed at death's doorstep. We can beat this, and then try to tackle the remaining symptoms with more time on the clock.";

    static Map<String,DataPoint> day1DataPoints() {
      Map<String,DataPoint> dataPoints = new Map<String,DataPoint>();
      //only new values are valid since its the first day
      DataPoint temp = new DataPoint(DataPoint.TEMPERATURE, "Despite the flu like symptoms, the temperature of the patients remains normal.","ERROR THIS SHOULDNT HAPPEN","ERROR THIS SHOULDNT HAPPEN", false);
      dataPoints[temp.name]=(temp);

      DataPoint blood = new DataPoint(DataPoint.BLOOD_PRESSURE, "Blood pressure is normal. Note, do not allow Jack to draw blood again. The patients seem to dislike it.","ERROR THIS SHOULDNT HAPPEN","ERROR THIS SHOULDNT HAPPEN", true);
      dataPoints[blood.name]=(blood);

      DataPoint hunger = new DataPoint(DataPoint.APPETITE, "We have decided to break Fasting Protocol and evaluate the patients appetite and digestive system. Both seem healthy.","ERROR THIS SHOULDNT HAPPEN","ERROR THIS SHOULDNT HAPPEN", false);
      dataPoints[hunger.name]=(hunger);

      DataPoint thirst = new DataPoint(DataPoint.THIRST, "Patients renal system is functioning normally.","ERROR THIS SHOULDNT HAPPEN","ERROR THIS SHOULDNT HAPPEN", false);
      dataPoints[thirst.name]=(thirst);

      DataPoint cure = new DataPoint(DataPoint.CUREREACTION, "Standard antibiotics have no measurable effect on the patients.","ERROR THIS SHOULDNT HAPPEN","ERROR THIS SHOULDNT HAPPEN", false);
      dataPoints[cure.name]=(cure);


      return dataPoints;
    }

    static Map<String,DataPoint> day2DataPoints() {
        Map<String,DataPoint> dataPoints = new Map<String,DataPoint>();
        DataPoint temp = new DataPoint(DataPoint.TEMPERATURE, "Despite the flu like symptoms, the temperature of the patients remains normal.","ERROR THIS SHOULDNT HAPPEN","Body temperature remains within normal tolerances for all patients.", false);
        dataPoints[temp.name]=(temp);

        DataPoint blood = new DataPoint(DataPoint.BLOOD_PRESSURE, "Blood pressure is remarkably high. Why didn't we check this sooner?","Blood pressure continues to elevate.","ERROR THIS SHOULDNT HAPPEN (BP is never normal)", true);
        dataPoints[blood.name]=(blood);

        DataPoint hunger = new DataPoint(DataPoint.APPETITE, "We have decided to break Fasting Protocol and evaluate the patients appetite and digestive system. Both seem healthy.","ERROR THIS SHOULDNT HAPPEN","Patients appetite remains steady. No digestive abnormalities.", false);
        dataPoints[hunger.name]=(hunger);

        DataPoint thirst = new DataPoint(DataPoint.THIRST, "Patients renal system is functioning normally.","ERROR THIS SHOULDNT HAPPEN","Patients have no issues swallowing water, and passing it.", false);
        dataPoints[thirst.name]=(thirst);

        DataPoint cure = new DataPoint(DataPoint.CUREREACTION, "Standard antivirals have no measurable effect on the patients.","ERROR THIS SHOULDNT HAPPEN","ERROR THIS SHOULDNT HAPPEN", false);
        dataPoints[cure.name]=(cure);
        return dataPoints;
    }

    static Map<String,DataPoint> day3DataPoints() {
        Map<String,DataPoint> dataPoints = new Map<String,DataPoint>();
        DataPoint temp = new DataPoint(DataPoint.TEMPERATURE, "Despite the flu like symptoms, the temperature of the patients remains normal.","ERROR THIS SHOULDNT HAPPEN","Body temperature remains within normal tolerances for all patients.", false);
        dataPoints[temp.name]=(temp);

        DataPoint blood = new DataPoint(DataPoint.BLOOD_PRESSURE, "Blood pressure is remarkably high. Could this be the break we've been hoping for?","Blood pressure has suddenly spiked to worrying levels. What has changed in the past day or so?","Blood pressure continues to spike to worrying levels. Blood volume, however, somehow appears reduced.", true);
        dataPoints[blood.name]=(blood);

        DataPoint death = new DataPoint(DataPoint.DEATH, "We have decided to cull the patients, to prevent further spread of this mysterious disease.","ERROR","ERROR", true);
        dataPoints[death.name]=(death);

        DataPoint hunger = new DataPoint(DataPoint.APPETITE, "We have decided to break Fasting Protocol and evaluate the patients appetite and digestive system. Both seem healthy.","ERROR THIS SHOULDNT HAPPEN","Patients appetite remains steady. No digestive abnormalities.", false);
        dataPoints[hunger.name]=(hunger);

        DataPoint thirst = new DataPoint(DataPoint.THIRST, "Patients renal system is functioning normally.","ERROR THIS SHOULDNT HAPPEN","Patients have no issues swallowing water, and passing it.", false);
        dataPoints[thirst.name]=(thirst);

        DataPoint cure = new DataPoint(DataPoint.CUREREACTION, "Standard antifungals have no measurable effect on the patients.","ERROR THIS SHOULDNT HAPPEN","ERROR THIS SHOULDNT HAPPEN", false);
        dataPoints[cure.name]=(cure);


        return dataPoints;
    }

    static Map<String,DataPoint> day4DataPoints() {
        Map<String,DataPoint> dataPoints = new Map<String,DataPoint>();
        DataPoint temp = new DataPoint(DataPoint.TEMPERATURE, "The patients temperature remains well within normal tolerances.","ERROR THIS SHOULDNT HAPPEN","Body temperature remains normal.", false);
        dataPoints[temp.name]=(temp);

        DataPoint blood = new DataPoint(DataPoint.BLOOD_PRESSURE, "Blood pressure is remarkably high. Could this be the break we've been hoping for?","Blood pressure has suddenly spiked to worrying levels. What has changed in the past day or so?","Blood pressure continues to spike to worrying levels.", true);
        dataPoints[blood.name]=(blood);

        DataPoint death = new DataPoint(DataPoint.DEATH, "We have decided to cull the patients, to prevent further spread of this mysterious disease.","ERROR","ERROR", true);
        dataPoints[death.name]=(death);

        DataPoint hunger = new DataPoint(DataPoint.APPETITE, "Patients appear ravenous. Constant demands for food spurred us to make the decision to break the Fasting Protocol.","ERROR THIS SHOULDNT HAPPEN","Patients appetite has suddenly spiked, they are consuming a VAST amount of calories and show no signs of stopping.", true);
        dataPoints[hunger.name]=(hunger);

        DataPoint thirst = new DataPoint(DataPoint.THIRST, "Patients renal system is functioning normally.","ERROR THIS SHOULDNT HAPPEN","Patients have no issues swallowing water, and passing it.", false);
        dataPoints[thirst.name]=(thirst);

        DataPoint cure = new DataPoint(DataPoint.CUREREACTION, "Autoimmune suppresants have no measurable effect on the patients.","ERROR THIS SHOULDNT HAPPEN","ERROR THIS SHOULDNT HAPPEN", false);
        dataPoints[cure.name]=(cure);
        return dataPoints;
    }

    //extreme hunger ongoing
    static Map<String,DataPoint> day5DataPoints() {
        Map<String,DataPoint> dataPoints = new Map<String,DataPoint>();
        DataPoint temp = new DataPoint(DataPoint.TEMPERATURE, "The patients temperature remains well within normal tolerances.","ERROR THIS SHOULDNT HAPPEN","Body temperature remains normal.", false);
        dataPoints[temp.name]=(temp);

        DataPoint blood = new DataPoint(DataPoint.BLOOD_PRESSURE, "Blood pressure is remarkably high. Could this be the break we've been hoping for?","Blood pressure has suddenly spiked to worrying levels. What has changed in the past day or so?","Blood pressure continues to spike to worrying levels.", true);
        dataPoints[blood.name]=(blood);

        DataPoint death = new DataPoint(DataPoint.DEATH, "We have decided to cull the patients, to prevent further spread of this mysterious disease.","ERROR","ERROR", true);
        dataPoints[death.name]=(death);

        DataPoint hunger = new DataPoint(DataPoint.APPETITE, "Patients have appeared ravenous for over 24 hours now. Constant demands for food spurred us to make the decision to break the Fasting Protocol.","Patient metabolism remains in overdrive.","Patients appetite has suddenly spiked, they are consuming a VAST amount of calories and show no signs of stopping.", true);
        dataPoints[hunger.name]=(hunger);

        DataPoint thirst = new DataPoint(DataPoint.THIRST, "Patients renal system is functioning normally.","ERROR THIS SHOULDNT HAPPEN","Patients have no issues swallowing water, and passing it.", false);
        dataPoints[thirst.name]=(thirst);

        DataPoint cure = new DataPoint(DataPoint.CUREREACTION, "Extremely unscientific, last ditch magical spells have no measurable effect on the patients.","ERROR THIS SHOULDNT HAPPEN","ERROR THIS SHOULDNT HAPPEN", false);
        dataPoints[cure.name]=(cure);
        return dataPoints;
    }


    //extreme hunger ongoing
    static Map<String,DataPoint> day6DataPoints() {
        Map<String,DataPoint> dataPoints = new Map<String,DataPoint>();
        DataPoint temp = new DataPoint(DataPoint.TEMPERATURE, "The patients temperature remains well within normal tolerances.","ERROR THIS SHOULDNT HAPPEN","Body temperature remains normal.", false);
        dataPoints[temp.name]=(temp);

        DataPoint blood = new DataPoint(DataPoint.BLOOD_PRESSURE, "Blood pressure is remarkably high. Could this be the break we've been hoping for?","Blood pressure has suddenly spiked to worrying levels. What has changed in the past day or so?","Blood pressure continues to spike to worrying levels.", true);
        dataPoints[blood.name]=(blood);

        DataPoint death = new DataPoint(DataPoint.DEATH, "We have decided to cull the patients, to prevent further spread of this mysterious disease.","ERROR","ERROR", true);
        dataPoints[death.name]=(death);

        DataPoint hunger = new DataPoint(DataPoint.APPETITE, "Patients have appeared ravenous for over 24 hours now. Constant demands for food spurred us to make the decision to break the Fasting Protocol.","Patient metabolism remains in overdrive.","Patients appetite has suddenly spiked, they are consuming a VAST amount of calories and show no signs of stopping.", true);
        dataPoints[hunger.name]=(hunger);

        DataPoint thirst = new DataPoint(DataPoint.THIRST, "Patients renal system is functioning normally.","ERROR THIS SHOULDNT HAPPEN","Patients have no issues swallowing water, and passing it.", false);
        dataPoints[thirst.name]=(thirst);

        DataPoint cure = new DataPoint(DataPoint.CUREREACTION, "It...it's a miracle. After exposure to a tree displaying a mutated strain of the infection, the patients have rapidly improved! They might not die! We might have a cure!","ERROR THIS SHOULDNT HAPPEN","ERROR THIS SHOULDNT HAPPEN", true);
        dataPoints[cure.name]=(cure);
        return dataPoints;
    }


    //extreme hunger ongoing
    static Map<String,DataPoint> day7DataPoints() {
        Map<String,DataPoint> dataPoints = new Map<String,DataPoint>();
        DataPoint temp = new DataPoint(DataPoint.TEMPERATURE, "The patients temperature remains well within normal tolerances.","ERROR THIS SHOULDNT HAPPEN","Body temperature remains normal.", false);
        dataPoints[temp.name]=(temp);

        DataPoint blood = new DataPoint(DataPoint.BLOOD_PRESSURE, "Blood pressure is remarkably high. Could this be the break we've been hoping for?","Blood pressure has suddenly spiked to worrying levels. What has changed in the past day or so?","Blood pressure continues to spike to worrying levels.", true);
        dataPoints[blood.name]=(blood);

        DataPoint death = new DataPoint(DataPoint.DEATH, "We have decided to cull the patients, to prevent further spread of this mysterious disease.","ERROR","ERROR", true);
        dataPoints[death.name]=(death);

        DataPoint hunger = new DataPoint(DataPoint.APPETITE, "Patients have appeared ravenous for over 24 hours now. Constant demands for food spurred us to make the decision to break the Fasting Protocol.","Patient metabolism remains in overdrive.","Patients appetite has suddenly spiked, they are consuming a VAST amount of calories and show no signs of stopping.", true);
        dataPoints[hunger.name]=(hunger);

        DataPoint thirst = new DataPoint(DataPoint.THIRST, "Patients renal system is functioning normally.","ERROR THIS SHOULDNT HAPPEN","Patients have no issues swallowing water, and passing it.", false);
        dataPoints[thirst.name]=(thirst);

        DataPoint cure = new DataPoint(DataPoint.CUREREACTION, "It...it's a miracle. After exposure to a tree displaying a mutated strain of the infection, the patients have rapidly improved! They might not die! We might have a cure! We can fight fire with fire!","ERROR THIS SHOULDNT HAPPEN","ERROR THIS SHOULDNT HAPPEN", true);
        dataPoints[cure.name]=(cure);


        return dataPoints;
    }


    //extreme hunger ongoing
    static Map<String,DataPoint> day8DataPoints() {
        Map<String,DataPoint> dataPoints = new Map<String,DataPoint>();
        DataPoint temp = new DataPoint(DataPoint.TEMPERATURE, "The patients temperature remains well within normal tolerances.","ERROR THIS SHOULDNT HAPPEN","Body temperature remains normal.", false);
        dataPoints[temp.name]=(temp);

        DataPoint blood = new DataPoint(DataPoint.BLOOD_PRESSURE, "Blood pressure is remarkably high. Could this be the break we've been hoping for?","Blood pressure has suddenly spiked to worrying levels. What has changed in the past day or so?","Blood pressure continues to spike to worrying levels.", true);
        dataPoints[blood.name]=(blood);

        DataPoint death = new DataPoint(DataPoint.DEATH, "We have decided to cull the patients, to prevent further spread of this mysterious disease.","ERROR","ERROR", true);
        dataPoints[death.name]=(death);

        DataPoint hunger = new DataPoint(DataPoint.APPETITE, "Patients have appeared ravenous for over 24 hours now. Constant demands for food spurred us to make the decision to break the Fasting Protocol.","Patient metabolism remains in overdrive.","Patients appetite has suddenly spiked, they are consuming a VAST amount of calories and show no signs of stopping.", true);
        dataPoints[hunger.name]=(hunger);

        DataPoint thirst = new DataPoint(DataPoint.THIRST, "Patients renal system is functioning normally.","ERROR THIS SHOULDNT HAPPEN","Patients have no issues swallowing water, and passing it.", false);
        dataPoints[thirst.name]=(thirst);

        DataPoint cure = new DataPoint(DataPoint.CUREREACTION, "It...it's a miracle. After exposure to a tree displaying a mutated strain of the infection, the patients have rapidly improved! They might not die! We might have a cure!","ERROR THIS SHOULDNT HAPPEN","ERROR THIS SHOULDNT HAPPEN", true);
        dataPoints[cure.name]=(cure);
        return dataPoints;
    }

    //extreme hunger ongoing
    static Map<String,DataPoint> day7AltDataPoints() {
        Map<String,DataPoint> dataPoints = new Map<String,DataPoint>();
        DataPoint temp = new DataPoint(DataPoint.TEMPERATURE, "The patients temperature remains well within normal tolerances.","ERROR THIS SHOULDNT HAPPEN","Body temperature remains normal.", false);
        dataPoints[temp.name]=(temp);

        DataPoint blood = new DataPoint(DataPoint.BLOOD_PRESSURE, "Blood pressure is remarkably high. Could this be the break we've been hoping for?","Blood pressure has suddenly spiked to worrying levels. What has changed in the past day or so?","Blood pressure continues to spike to worrying levels.", true);
        dataPoints[blood.name]=(blood);

        DataPoint death = new DataPoint(DataPoint.DEATH, "We have decided to cull the patients, to prevent further spread of this mysterious disease.","ERROR","ERROR", true);
        dataPoints[death.name]=(death);

        DataPoint hunger = new DataPoint(DataPoint.APPETITE, "Patients have appeared ravenous for over 24 hours now. Constant demands for food spurred us to make the decision to break the Fasting Protocol.","Patient metabolism remains in overdrive.","Patients appetite has suddenly spiked, they are consuming a VAST amount of calories and show no signs of stopping.", true);
        dataPoints[hunger.name]=(hunger);

        DataPoint thirst = new DataPoint(DataPoint.THIRST, "Patients renal system is functioning normally.","ERROR THIS SHOULDNT HAPPEN","Patients have no issues swallowing water, and passing it.", false);
        dataPoints[thirst.name]=(thirst);
        return dataPoints;
    }


    //extreme hunger ongoing
    static Map<String,DataPoint> day8AltDataPoints() {
        Map<String,DataPoint> dataPoints = new Map<String,DataPoint>();
        DataPoint temp = new DataPoint(DataPoint.TEMPERATURE, "The patients temperature remains well within normal tolerances.","ERROR THIS SHOULDNT HAPPEN","Body temperature remains normal.", false);
        dataPoints[temp.name]=(temp);

        DataPoint blood = new DataPoint(DataPoint.BLOOD_PRESSURE, "Blood pressure is remarkably high. Could this be the break we've been hoping for?","Blood pressure has suddenly spiked to worrying levels. What has changed in the past day or so?","Blood pressure continues to spike to worrying levels.", true);
        dataPoints[blood.name]=(blood);

        DataPoint death = new DataPoint(DataPoint.DEATH, "We have decided to cull the patients, to prevent further spread of this mysterious disease.","ERROR","ERROR", true);
        dataPoints[death.name]=(death);

        DataPoint hunger = new DataPoint(DataPoint.APPETITE, "Patients have appeared ravenous for over 24 hours now. Constant demands for food spurred us to make the decision to break the Fasting Protocol.","Patient metabolism remains in overdrive.","Patients appetite has suddenly spiked, they are consuming a VAST amount of calories and show no signs of stopping.", true);
        dataPoints[hunger.name]=(hunger);

        DataPoint thirst = new DataPoint(DataPoint.THIRST, "Patients renal system is functioning normally.","ERROR THIS SHOULDNT HAPPEN","Patients have no issues swallowing water, and passing it.", false);
        dataPoints[thirst.name]=(thirst);
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

      Question question3 = new Question("Should we feed the patients today, Investigator?", Question.INTERN_JIMMY);
      new Response(question3, "Yes", "Oh good they were starting to look hungry.", <String>[DataPoint.APPETITE],1);
      new Response(question3, "No", "Okay...but they look so hungry...", <String>[],0);

      Question question4 = new Question("Should we give the patients water today, Investigator?", Question.INTERN_JIMMY);
      new Response(question4, "Yes", "I wonder how I carry all that water to them?", <String>[DataPoint.THIRST],1);
      new Response(question4, "No", "Oh good, I wasn't looking forward to carrying all that water.", <String>[],0);

      Question question5 = new Question("I would like to investigate the effects of antibiotics on the patients, Lead Investigator.", Question.RESEARCHER_JADEN);
      new Response(question5, "Yes", "Appreciated.", <String>[DataPoint.CUREREACTION],3);
      new Response(question5, "No", "...as you say, Lead Investigator", <String>[],0);

      questions.add(question1);
      questions.add(question2);
      questions.add(question3);
      questions.add(question4);
      questions.add(question5);


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

        Question question3 = new Question("Should we feed the patients today, Investigator?", Question.INTERN_JIMMY);
        new Response(question3, "Yes", "Oh good they were starting to look hungry.", <String>[DataPoint.APPETITE],1);
        new Response(question3, "No", "Okay...but they look so hungry...", <String>[],0);

        Question question4 = new Question("Should we give the patients water today, Investigator?", Question.INTERN_JIMMY);
        new Response(question4, "Yes", "I wonder how I carry all that water to them?", <String>[DataPoint.THIRST],1);
        new Response(question4, "No", "Oh good, I wasn't looking forward to carrying all that water.", <String>[],0);

        Question question5 = new Question("I would like to investigate the effects of antivirals on the patients, Lead Investigator.", Question.RESEARCHER_JADEN);
        new Response(question5, "Yes", "Appreciated.", <String>[DataPoint.CUREREACTION],3);
        new Response(question5, "No", "...as you say, Lead Investigator", <String>[],0);

        questions.add(question1);
        questions.add(question2);
        questions.add(question3);
        questions.add(question4);
        questions.add(question5);
        return questions;
    }

    static List<Question> day3Questions() {
        List<Question> questions = new List<Question>();
        Question question1 = new Question("I'm ready to check the patients blood pressure, today, Investigator!", Question.INTERN_JIMMY);
        new Response(question1, "Yes", "I can do this!", <String>[DataPoint.BLOOD_PRESSURE],1);
        new Response(question1, "No", "Okay...", <String>[],0);

        Question question2 = new Question("Should we kill the patients, Investigator?", Question.GENOCIDE_JACK);
        new Response(question2, "Yes", "Finally, some good fucking content", <String>[DataPoint.DEATH],88);
        new Response(question2, "No", "...I suppose you are the expert.", <String>[],0);

        Question question3 = new Question("Should we feed the patients today, Investigator?", Question.INTERN_JIMMY);
        new Response(question3, "Yes", "Oh good they were starting to look hungry.", <String>[DataPoint.APPETITE],1);
        new Response(question3, "No", "Okay...but they look so hungry...", <String>[],0);

        Question question4 = new Question("Should we give the patients water today, Investigator?", Question.INTERN_JIMMY);
        new Response(question4, "Yes", "I wonder how I carry all that water to them?", <String>[DataPoint.THIRST],1);
        new Response(question4, "No", "Oh good, I wasn't looking forward to carrying all that water.", <String>[],0);

        Question question5 = new Question("I would like to investigate the effects of antifungals on the patients, Lead Investigator.", Question.RESEARCHER_JADEN);
        new Response(question5, "Yes", "Appreciated.", <String>[DataPoint.CUREREACTION],3);
        new Response(question5, "No", "...as you say, Lead Investigator", <String>[],0);

        questions.add(question1);
        questions.add(question2);
        questions.add(question3);
        questions.add(question4);
        questions.add(question5);
        return questions;
    }

    static List<Question> day4Questions() {
        List<Question> questions = new List<Question>();
        Question question1 = new Question("Is it blood pressure time, Investigator?", Question.INTERN_JIMMY);
        new Response(question1, "Yes", "I can do this!", <String>[DataPoint.BLOOD_PRESSURE],1);
        new Response(question1, "No", "Aww...Okay...", <String>[],0);

        Question question2 = new Question("Should we kill the patients, Investigator?", Question.GENOCIDE_JACK);
        new Response(question2, "Yes", "Finally, some good fucking content", <String>[DataPoint.DEATH],88);
        new Response(question2, "No", "...I suppose you are the expert.", <String>[],0);

        Question question3 = new Question("Should we feed the patients today, Investigator?", Question.INTERN_JIMMY);
        new Response(question3, "Yes", "Oh thank god they were starting to riot.", <String>[DataPoint.APPETITE],1);
        new Response(question3, "No", "Okay...but...they keep screaming for food...", <String>[],0);

        Question question4 = new Question("Should we give the patients water today, Investigator?", Question.INTERN_JIMMY);
        new Response(question4, "Yes", "I wonder how I carry all that water to them?", <String>[DataPoint.THIRST],1);
        new Response(question4, "No", "Oh good, I wasn't looking forward to carrying all that water.", <String>[],0);

        Question question5 = new Question("I would like to investigate the effects of autoimmune suppresants on the patients, Lead Investigator.", Question.RESEARCHER_JADEN);
        new Response(question5, "Yes", "Appreciated.", <String>[DataPoint.CUREREACTION],3);
        new Response(question5, "No", "...as you say, Lead Investigator", <String>[],0);

        questions.add(question1);
        questions.add(question2);
        questions.add(question3);
        questions.add(question4);
        questions.add(question5);
        return questions;
    }

    static List<Question> day5Questions() {
        List<Question> questions = new List<Question>();
        Question question1 = new Question("Is it blood pressure time, Investigator?", Question.INTERN_JIMMY);
        new Response(question1, "Yes", "I can do this!", <String>[DataPoint.BLOOD_PRESSURE],1);
        new Response(question1, "No", "Aww...Okay...", <String>[],0);

        Question question2 = new Question("Should we kill the patients, Investigator?", Question.GENOCIDE_JACK);
        new Response(question2, "Yes", "Finally, some good fucking content", <String>[DataPoint.DEATH],88);
        new Response(question2, "No", "...I suppose you are the expert.", <String>[],0);

        Question question3 = new Question("can we please feed the patients today, Investigator?", Question.INTERN_JIMMY);
        new Response(question3, "Yes", "Oh thank god they were starting to riot.", <String>[DataPoint.APPETITE],1);
        new Response(question3, "No", "Okay...but...they keep screaming for food...", <String>[],0);

        Question question4 = new Question("Should we give the patients water today, Investigator?", Question.INTERN_JIMMY);
        new Response(question4, "Yes", "I wonder how I carry all that water to them?", <String>[DataPoint.THIRST],1);
        new Response(question4, "No", "Oh good, I wasn't looking forward to carrying all that water.", <String>[],0);

        Question question5 = new Question("I admit that I am stumped, Lead Investigator. Intern Jimmy, however, says that his Grandmother always tries standing on one foot while chanting 'Do Your Best' and at this point, doing something feels more productive than doing nothing. May we do this?", Question.RESEARCHER_JADEN);
        new Response(question5, "Yes", "At least this won't be boring.", <String>[DataPoint.CUREREACTION],3);
        new Response(question5, "No", "I apologize for the frivolity, Lead Investigator", <String>[],0);

        questions.add(question1);
        questions.add(question2);
        questions.add(question3);
        questions.add(question4);
        questions.add(question5);
        return questions;
    }

    static List<Question> day6Questions() {
        List<Question> questions = new List<Question>();
        Question question1 = new Question("Is it blood pressure time, Investigator?", Question.INTERN_JIMMY);
        new Response(question1, "Yes", "I can do this!", <String>[DataPoint.BLOOD_PRESSURE],1);
        new Response(question1, "No", "Aww...Okay...", <String>[],0);

        Question question2 = new Question("Should we kill the patients, Investigator?", Question.GENOCIDE_JACK);
        new Response(question2, "Yes", "Finally, some good fucking content", <String>[DataPoint.DEATH],88);
        new Response(question2, "No", "...I suppose you are the expert.", <String>[],0);

        Question question3 = new Question("can we please feed the patients today, Investigator?", Question.INTERN_JIMMY);
        new Response(question3, "Yes", "Oh thank god they were starting to riot.", <String>[DataPoint.APPETITE],1);
        new Response(question3, "No", "Okay...but...they keep screaming for food...", <String>[],0);

        Question question4 = new Question("Should we give the patients water today, Investigator?", Question.INTERN_JIMMY);
        new Response(question4, "Yes", "I wonder how I carry all that water to them?", <String>[DataPoint.THIRST],1);
        new Response(question4, "No", "Oh good, I wasn't looking forward to carrying all that water.", <String>[],0);

        Question question5 = new Question("Where should I put this weird sample of an Infected Plant, Investigator? ", Question.INTERN_JIMMY);
        new Response(question5, "Burn it. We can't risk more vectors of infection.", "Okay!", <String>[],1);
        new Response(question5, "You may as well put it with the quarantined patients, Jimmy.", "Okay!", <String>[DataPoint.CUREREACTION],1);


        questions.add(question1);
        questions.add(question2);
        questions.add(question3);
        questions.add(question4);
        questions.add(question5);
        return questions;
    }

    static List<Question> day7Questions() {
        List<Question> questions = new List<Question>();
        Question question1 = new Question("Is it blood pressure time, Investigator?", Question.INTERN_JIMMY);
        new Response(question1, "Yes", "I can do this!", <String>[DataPoint.BLOOD_PRESSURE],1);
        new Response(question1, "No", "Aww...Okay...", <String>[],0);

        Question question2 = new Question("Should we kill the patients, Investigator?", Question.GENOCIDE_JACK);
        new Response(question2, "Yes", "Finally, some good fucking content", <String>[DataPoint.DEATH],88);
        new Response(question2, "No", "...I suppose you are the expert.", <String>[],0);

        Question question3 = new Question("can we please feed the patients today, Investigator?", Question.INTERN_JIMMY);
        new Response(question3, "Yes", "Oh thank god they were starting to riot.", <String>[DataPoint.APPETITE],1);
        new Response(question3, "No", "Okay...but...they keep screaming for food...", <String>[],0);

        Question question4 = new Question("Should we give the patients water today, Investigator?", Question.INTERN_JIMMY);
        new Response(question4, "Yes", "I wonder how I carry all that water to them?", <String>[DataPoint.THIRST],1);
        new Response(question4, "No", "Oh good, I wasn't looking forward to carrying all that water.", <String>[],0);

        questions.add(question1);
        questions.add(question2);
        questions.add(question3);
        questions.add(question4);
        return questions;
    }

    static List<Question> day8Questions() {
        List<Question> questions = new List<Question>();
        Question question1 = new Question("Is it blood pressure time, Investigator?", Question.INTERN_JIMMY);
        new Response(question1, "Yes", "I can do this!", <String>[DataPoint.BLOOD_PRESSURE],1);
        new Response(question1, "No", "Aww...Okay...", <String>[],0);

        Question question2 = new Question("Should we kill the patients, Investigator?", Question.GENOCIDE_JACK);
        new Response(question2, "Yes", "Finally, some good fucking content", <String>[DataPoint.DEATH],88);
        new Response(question2, "No", "...I suppose you are the expert.", <String>[],0);

        Question question3 = new Question("can we please feed the patients today, Investigator?", Question.INTERN_JIMMY);
        new Response(question3, "Yes", "Oh thank god they were starting to riot.", <String>[DataPoint.APPETITE],1);
        new Response(question3, "No", "Okay...but...they keep screaming for food...", <String>[],0);

        Question question4 = new Question("Should we give the patients water today, Investigator?", Question.INTERN_JIMMY);
        new Response(question4, "Yes", "I wonder how I carry all that water to them?", <String>[DataPoint.THIRST],1);
        new Response(question4, "No", "Oh good, I wasn't looking forward to carrying all that water.", <String>[],0);

        questions.add(question1);
        questions.add(question2);
        questions.add(question3);
        questions.add(question4);
        return questions;
    }

    static List<Question> day7AltQuestions() {
        List<Question> questions = new List<Question>();
        Question question1 = new Question("Alt Placeholder: Is it blood pressure time, Investigator?", Question.INTERN_JIMMY);
        new Response(question1, "Yes", "I can do this!", <String>[DataPoint.BLOOD_PRESSURE],1);
        new Response(question1, "No", "Aww...Okay...", <String>[],0);

        Question question2 = new Question("Alt Placeholder: Should we kill the patients, Investigator?", Question.GENOCIDE_JACK);
        new Response(question2, "Yes", "Finally, some good fucking content", <String>[DataPoint.DEATH],88);
        new Response(question2, "No", "...I suppose you are the expert.", <String>[],0);

        Question question3 = new Question("Alt Placeholder:  can we please feed the patients today, Investigator?", Question.INTERN_JIMMY);
        new Response(question3, "Yes", "Oh thank god they were starting to riot.", <String>[DataPoint.APPETITE],1);
        new Response(question3, "No", "Okay...but...they keep screaming for food...", <String>[],0);

        Question question4 = new Question("Alt Placeholder:  Should we give the patients water today, Investigator?", Question.INTERN_JIMMY);
        new Response(question4, "Yes", "I wonder how I carry all that water to them?", <String>[DataPoint.THIRST],1);
        new Response(question4, "No", "Oh good, I wasn't looking forward to carrying all that water.", <String>[],0);

        questions.add(question1);
        questions.add(question2);
        questions.add(question3);
        questions.add(question4);
        return questions;
    }

    static List<Question> day8AltQuestions() {
        List<Question> questions = new List<Question>();
        Question question1 = new Question("Alt Placeholder: Is it blood pressure time, Investigator?", Question.INTERN_JIMMY);
        new Response(question1, "Yes", "I can do this!", <String>[DataPoint.BLOOD_PRESSURE],1);
        new Response(question1, "No", "Aww...Okay...", <String>[],0);

        Question question2 = new Question("Alt Placeholder: Should we kill the patients, Investigator?", Question.GENOCIDE_JACK);
        new Response(question2, "Yes", "Finally, some good fucking content", <String>[DataPoint.DEATH],88);
        new Response(question2, "No", "...I suppose you are the expert.", <String>[],0);

        Question question3 = new Question("Alt Placeholder: can we please feed the patients today, Investigator?", Question.INTERN_JIMMY);
        new Response(question3, "Yes", "Oh thank god they were starting to riot.", <String>[DataPoint.APPETITE],1);
        new Response(question3, "No", "Okay...but...they keep screaming for food...", <String>[],0);

        Question question4 = new Question("Alt Placeholder: Should we give the patients water today, Investigator?", Question.INTERN_JIMMY);
        new Response(question4, "Yes", "I wonder how I carry all that water to them?", <String>[DataPoint.THIRST],1);
        new Response(question4, "No", "Oh good, I wasn't looking forward to carrying all that water.", <String>[],0);

        questions.add(question1);
        questions.add(question2);
        questions.add(question3);
        questions.add(question4);
        return questions;
    }

}