/*
TODO
a response has the text of the response to display (so you can choose it)
the text of the response to say once chosen
a list of variables you set to true at the end of this (just strings)
how many action points it secretly cost to do this thing
and MAYBE a list of variables you set to false at the end of this. (might be redundant)

TODO maybe have different response text depending on if the speaker likes or dislikes you (maybe speaker should be an object)
TODO would also have a response list out how it affects the speakers opinion of you

TODO allow variables to be set that don't just reflect a data point (such as, killing all patients, etc)
 */
import 'Question.dart';

class Response {
    String displayText;
    String responseText;
    List<String> trueVariables = new List<String>();
    int actionPoints;

    Response(Question question, this.displayText, this.responseText, List<String> this.trueVariables, int this.actionPoints) {
        question.addResponse(this);
    }
}