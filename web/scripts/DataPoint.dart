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
    String name;
    String newComment;
    String changeCommentLastAbnormal;
    String changeCommentLastNormal;
    bool valueAbnormal;

}