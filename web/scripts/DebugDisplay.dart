import 'dart:html';

import 'DataPoint.dart';
import 'Day.dart';
import 'Game.dart';
import 'Question.dart';

abstract class DebugDisplay {
    static void debugDisplay(Game game) {
        //for each day, print it out in a table
        TableElement table = new TableElement()..classes.add("boringTable");
        TableRowElement header = new TableRowElement()..classes.add("boringTable");
        table.append(header);
        TableCellElement cell1 = new TableCellElement()..text = "Day"..classes.add("boringTable");
        TableCellElement cell2 = new TableCellElement()..text = "Data"..classes.add("boringTable");

        header.append(cell1);
        header.append(cell2);

        for(Day day in game.days) {
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
        TableRowElement row = new TableRowElement();
        table.append(row);
        TableCellElement cell1 = new TableCellElement()..text = "${question.text}";
        TableCellElement cell2 = new TableCellElement()..text = "${question.speaker}";
        TableCellElement cell3 = new TableCellElement();

        row.append(cell1);
        row.append(cell2);
        row.append(cell3);
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