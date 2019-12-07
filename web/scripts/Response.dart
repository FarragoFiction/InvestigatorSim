/*
TODO
a response has the text of the response to display (so you can choose it)
the text of the response to say once chosen
a list of variables you set to true at the end of this (just strings)
how many action points it secretly cost to do this thing
and MAYBE a list of variables you set to false at the end of this. (might be redundant)
 */
class Response {
    String displayText;
    String responseText;
    List<String> trueVariables = new List<String>();
    int actionPoints;
}