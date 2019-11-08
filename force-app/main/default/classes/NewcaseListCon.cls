public class NewcaseListCon {

    public case newcases { get; set; }

    public case cs { get; set; }

    public list<case> getCases() {
     list<case> cs=[SELECT ID,casenumber,status FROM Case WHERE Status='new' ];
    
        return cs;
    }

}