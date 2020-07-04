/*
    each data point has a
    name (which will be used to find it in the day)
    string report comment if first data point for this category of stat
    string report comment if NOT first data point for this category of stat
    bool valueAbnormal lets the system know if this is interesting (and lets us see if the last time we knew about the stat if it was the same)

    originally i thought we needed to know actual values but it occurs to me that we don't. we're handling things, not the ai.
    Use case is something like:
    {
        name: "temperature",
        newComment: "The subjects' temperature, is well withing normal parameters.",
        changeCommentLastAbnormal: "The subjects' fever has finally broken.",
        changeCommentLastNormal: "The subjects' temperature remains normal.",
        valueAbnormal: false
     }
     //TODO yes this means that human knowledge will be required when making comments.
      //TODO If we KNOW every abnormal temp before this day is high we can write things like that, else be vaguer.
 */
class DataPoint {
    static String TEMPERATURE = "temperature"; //take their temperature
    static String BLOOD_PRESSURE = "blood_pressure"; //take their blood pressure
    static String DEATH = "death"; //kill them
    static String PAIN = "pain"; //ask them to rate their pain on the pain scale
    static String LUNGS = "lungs"; //listen to their lungs
    static String PULSE="pulse"; //take their pulse
    static String OBSERVE="observe"; //give them a visual examination
    static String MOTOR="motor"; //test their motor system, have them walk around, touch their toes, etc
    static String COGNITION="cognition"; //ask them simple questions, whats todays date, do you know your name, can you do this simple math/reading test
    static String BLOOD_TEST="blood_test"; //test how their immune system is working, do they have secondary infections that might be muddying the results, etc

    //if its day 4 and they haven't eaten yet, they die here.
    static String APPETITE = "appetite"; //sample it by feeding them
    //if at any point its been at least three days since they've had water, they die of thirst.
    static String THIRST = "thirst"; //sample it by giving them water

    static String CUREREACTION = "cure"; //you can try different things to cure them, they all fail but one, abnormal value means it didn't work


    String name;
    String newComment;
    String commentLastAbnormal;
    String commentLastNormal;
    bool valueAbnormal;

    DataPoint(this.name, this.newComment, this.commentLastAbnormal, this.commentLastNormal, this.valueAbnormal) {

    }

    //TODO need to ask the investigator what the last value for this was. (if none, do new comment)
    String getComment() {

    }

}