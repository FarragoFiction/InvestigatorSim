/*
TODO
a question has the text of the question
then a list of responses the Investigator can give
and also who is asking it (for quirks, images, etc)
 */
import 'Response.dart';


class Question {
    //placeholders
    static String INTERN_JIMMY = "images/jimmy.png";
    static String GENOCIDE_JACK = "images/jack.png";

    String text;
    //responses will handle adding themselves to their question
    List<Response> responses;
    String speaker;
    Question(this.text, this.speaker);

    void addResponse(Response response) {
        responses.add(response);
    }
}