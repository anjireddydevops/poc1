public class Actionfunctioncon1 {

    public list<account> accounts { get; set; }
    
     public PageReference display() {
     
     accounts=[select id,name,phone,rating,industry,annualrevenue from Account];
        return null;
    }


    
}