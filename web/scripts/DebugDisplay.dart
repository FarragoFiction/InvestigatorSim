import 'dart:html';

import 'DataPoint.dart';
import 'Day.dart';
import 'DayFactory.dart';
import 'Game.dart';
import 'Question.dart';
import 'Response.dart';

abstract class DebugDisplay {
    static void debugDisplay(Game game) {
        ButtonElement button = new ButtonElement()..text = "Toggle Questions?";
        game.container.append(button);
        document.documentElement.removeAttribute("data-seerOf");
        button.onClick.listen((Event e) {
            Element html = document.documentElement;
            const String tag = "data-seerOf";
            if (html.getAttribute(tag) == "void") {
                html.removeAttribute(tag);
            } else {
                html.setAttribute(tag, "void");
            }
        });
        //for each day, print it out in a table
        TableElement table = new TableElement()..classes.add("boringTable");
        TableRowElement header = new TableRowElement()..classes.add("boringTable");
        table.append(header);
        TableCellElement cell1 = new TableCellElement()..text = "Day"..classes.add("boringTable");
        TableCellElement cell2 = new TableCellElement()..text = "Data"..classes.add("boringTable");

        header.append(cell1);
        header.append(cell2);
        List<Day> days = new List<Day>.from(game.days);
        days.add(DayFactory.altDay7());
        days.add(DayFactory.altDay8());

        for(Day day in days) {
            debugDisplayDay(table, day);
        }

        game.container.append(table);
    }

    static void debugDisplayDay(TableElement table, Day day) {
        TableRowElement row = new TableRowElement()..classes.add("boringTable");
        table.append(row);
        TableCellElement cell1 = new TableCellElement()..text = "${day.title}"..classes.add("boringTable");
        TableCellElement cell2 = new TableCellElement()..classes.add("boringTable");
        debugDisplayDayDetails(cell2, day);
        row.append(cell1);
        row.append(cell2);
    }

    static void debugDisplayDayDetails(TableCellElement cell, Day day) {
        displayDataPoints(cell, day);
        displayQuestions(cell, day);


    }

    static void displayDataPoints(TableCellElement cell, Day day) {
        TableElement table = new TableElement();
        cell.append(table);
        TableRowElement row = new TableRowElement();
        table.append(row);
        TableCellElement cell1 = new TableCellElement()..text = "DataPoint";
        TableCellElement cell2 = new TableCellElement()..text = "ValueAbnormal";
        TableCellElement cell3 = new TableCellElement()..text = "newComment";
        TableCellElement cell4 = new TableCellElement()..text = "commentLastAbnormal";
        TableCellElement cell5 = new TableCellElement()..text = "commentLastNormal";

        row.append(cell1);
        row.append(cell2);
        row.append(cell3);
        row.append(cell4);
        row.append(cell5);
        for(DataPoint point in day.datapoints.values) {
            debugDisplayDataPointDetails(table, point);
        }
    }

    static void displayQuestions(TableCellElement cell, Day day) {
        TableElement table = new TableElement();
        cell.append(table);
        TableRowElement row = new TableRowElement();
        table.append(row);
        TableCellElement cell1 = new TableCellElement()..text = "Question";
        TableCellElement cell2 = new TableCellElement()..text = "Speaker";
        TableCellElement cell3 = new TableCellElement()..text = "Rsponses";

        row.append(cell1);
        row.append(cell2);
        row.append(cell3);
        for(Question question in day.questions) {
            debugDisplayQuestionDetails(table, question);
        }
    }

    static void debugDisplayQuestionDetails(TableElement table, Question question) {

        TableRowElement row = new TableRowElement()..classes.add("void");
        table.append(row);
        TableCellElement cell1 = new TableCellElement()..text = "${question.text}";
        TableCellElement cell2 = new TableCellElement()..text = "${question.speaker}";
        TableCellElement cell3 = new TableCellElement();

        TableElement detailTable = new TableElement();
        cell3.append(detailTable);
        TableRowElement header = new TableRowElement();
        TableCellElement subcell1 = new TableCellElement()..text = "Your Response";
        TableCellElement subcell2 = new TableCellElement()..text = "Their Response";
        TableCellElement subcell3 = new TableCellElement()..text = "Action Point Cost";
        TableCellElement subcell4 = new TableCellElement()..text = "Variables Set To True";
        detailTable.append(header);
        header.append(subcell1);
        header.append(subcell2);
        header.append(subcell3);
        header.append(subcell4);
        for(Response response in question.responses) {
            debugDisplayResponseDetails(detailTable, response);
        }

        row.append(cell1);
        row.append(cell2);
        row.append(cell3);
    }

    static void debugDisplayResponseDetails(TableElement table, Response response) {
        TableRowElement row = new TableRowElement();
        table.append(row);
        TableCellElement cell1 = new TableCellElement()..text = "${response.displayText}";
        TableCellElement cell2 = new TableCellElement()..text = "${response.responseText}";
        TableCellElement cell3 = new TableCellElement()..text = "${response.actionPoints}";
        TableCellElement cell4 = new TableCellElement()..text = "${response.trueVariables.join(',')}";

        row.append(cell1);
        row.append(cell2);
        row.append(cell3);
        row.append(cell4);
    }

    static void debugDisplayDataPointDetails(TableElement table, DataPoint point) {
        TableRowElement row = new TableRowElement();
        table.append(row);
        TableCellElement cell1 = new TableCellElement()..text = "${point.name}";
        TableCellElement cell2 = new TableCellElement()..text = "${point.valueAbnormal?'✔':'✘'}";
        TableCellElement cell3 = new TableCellElement()..text = "${point.newComment}";
        TableCellElement cell4 = new TableCellElement()..text = "${point.commentLastAbnormal}";
        TableCellElement cell5 = new TableCellElement()..text = "${point.commentLastNormal}";

        row.append(cell1);
        row.append(cell2);
        row.append(cell3);
        row.append(cell4);
        row.append(cell5);
    }
}