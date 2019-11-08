public class WrapperinfoCon {

     list<wrapper>wrapperlist= new list<wrapper>();
    public list<wrapper> getWrapperlist() {
      list<opportunity>opp=[ SELECT name,amount,leadsource,closedate FROM opportunity];
      for(opportunity o:opp){
        wrapperlist.add(new wrapper(o,false));
        }
       
        return wrapperlist;
        
    }


    public String opps { get; set; } 
    
    public class wrapper{
      public opportunity opp {get;set;}
      public boolean cb {get;set;}
      public wrapper( opportunity o,boolean b){
      
        opp=o;
        cb=b;
        }
}}