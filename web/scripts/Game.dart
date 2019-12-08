import 'dart:html';

import 'Day.dart';
import 'DayFactory.dart';
import 'Question.dart';
import 'Response.dart';
//keep all the htmlm in here, don't let sub objects know how to render themselves so they can be unit tested
class Game {

    //the lower this is the more you are sabotaging the investigation
    int abnormalitiesFound = 0;

    bool hasEnded = false;

    Day dayPatientsCulled;
    //if its been more than three days without giving them water, they die
    bool diedOfThirst = false;
    //if its day four and they haven't eaten yet, they die
    bool diedOfHunger = false;

    List<Day> days = new List<Day>();
    int currentDayIndex = 0;

    Day get currentDay => days[currentDayIndex];
    Element container = new DivElement();
    Element questionElement = new DivElement()
        ..id = "question";
    Element responseElement = new DivElement()
        ..id = "response";
    Element currentDayElement = new DivElement()
        ..id = "currentDay";
    Element reportElement = new DivElement()
        ..id = "report";
    int pointsPerDay = 5;
    int pointsToday = 0;

    Game() {
        print("making a new game");
        days.add(DayFactory.day1());
        days.add(DayFactory.day2());
        days.add(DayFactory.day3());
    }

    //don't worry about graphics or anything else just yet, this is a proof of concept
    void attach(Element parent) {
        container;
        container.append(currentDayElement);
        container.append(questionElement);
        container.append(responseElement);
        container.append(reportElement);
        parent.append(container);
    }

    void start() {
        displayNext();
    }

    void end() {
        hasEnded = true;
        if(dayPatientsCulled != null) {
            int index = days.indexOf(dayPatientsCulled);
            if(index ==0) {
                displayReport(DayFactory.endingDay1);
            }else if(index ==1) {
                displayReport(DayFactory.endingDay2);
            }else if(index ==2) {
                displayReport(DayFactory.endingDay3);
            }else {
                displayReport("ERROR: MURDER NOT FOUND");
            };

        }else if(abnormalitiesFound >1) {
            displayReport(DayFactory.triedEnding);
        }else {
            displayReport(DayFactory.sabotogeEnding);
        }
    }

    void endDay() {
        displayReport(currentDay.report(days.sublist(0,currentDayIndex), this));
    }

    void displayReport(String report) {
        print("displaying report");
        reportElement.style.display = "block";
        DivElement header;
        if(hasEnded) {
            header = new DivElement()..text = "Final Report";
        }else {
            header = new DivElement()..text = currentDay.title;
        }
        header.classes.add("header");
        DivElement body = new DivElement()..setInnerHtml(report);
        ButtonElement signature = new ButtonElement()..text = "Approved, Doctor J.J.";
        reportElement.append(header);
        reportElement.append(body);
        reportElement.append(signature);

        signature.onClick.listen((Event e) {
            if(!hasEnded) {
                reportElement.text = "";
                reportElement.style.display = "none";
                currentDayIndex ++;
                if (currentDayIndex >= days.length) {
                    end();
                    return;
                }
                displayNext();
            }
        });

    }

    void displayNext() {
        print("displaying the next thing, cull is $dayPatientsCulled");
        if(dayPatientsCulled != null) {
            end();
            return;
        }
        //for the day we're on, if we still have action points, look for the next question
        //if we're out of action points, or there are no more questions, display report.
        //otherwise, display the question
        if (currentDay.outOfQuestions() || pointsToday >= pointsPerDay) {
            endDay();
            return;
        }
        currentDayElement.text = currentDay.title;
        questionElement.text = "";
        responseElement.text = "";
        reportElement.text = "";

        displayQuestion(currentDay.getNextQuestion());
    }

    void displayQuestion(Question question) {
        questionElement.style.display = "block";
        questionElement.children.forEach((child) => child.remove);
        DivElement questionText = new DivElement()
            ..text = question.text;
        questionElement.append(questionText);
        FormElement form = new FormElement();
        int index = 0;
        print("displaying question ${question.text} with ${question.responses
            .length} potential responses");
        for (Response response in question.responses) {
            LabelElement label = new LabelElement()
                ..text = response.displayText;
            RadioButtonInputElement choice = new RadioButtonInputElement()
                ..name = "responseOptions"
                ..id = "choice$index"
                ..value = "$index";
            label.htmlFor = choice.id;
            form.append(choice);
            form.append(label);
            index ++;
        }
        ButtonElement button = new ButtonElement()
            ..text = "Confirm Choice"
            ..classes.add("confirm-button");

        questionElement.append(form);
        questionElement.append(button);
        button.onClick.listen((Event e) {
            for (Element e in form.children) {
                if (e is RadioButtonInputElement &&
                    (e as RadioButtonInputElement).checked) {
                    questionElement.style.display="none";
                    displayResponse(question.responses[int.parse(e.value)]);
                    break;
                }
            }
        });
    }


    void displayResponse(Response response) {
        responseElement.style.display = "block";
        currentDay.processResponse(response);
        pointsToday += response.actionPoints;
        responseElement.text = response.responseText;
        ButtonElement ok = new ButtonElement()..text = "Carry On"..classes.add("confirm-button");
        ok.onClick.listen((Event e) {
            responseElement.style.display = "none";
            displayNext();
        });
        responseElement.append(ok);
    }

}