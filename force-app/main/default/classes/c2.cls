public class c2{
 public list<Account> acts;
 public list<account> getacts(){
  return acts;
  }
  public pageReference channel(){
     acts=[select name,industry,type,phone,fax from account where type='customer - channel'];
     return null;
     }
     public pageReference direct(){
      acts=[select name,industry,type ,phone,fax from account where type='customer - direct'];
      return null;
      }
      




}