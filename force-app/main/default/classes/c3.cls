public class c3{
 list<opportunity> opps;
 public list<opportunity> getopps(){
  return opps;
  }
  
  public pageReference prospecting(){
  opps= [ select name,amount,type ,stagename from opportunity where stagename='prospecting'];
  return null;
  }
   public pageReference closedwon(){
  opps= [ select name,amount,type, stagename from opportunity where stagename='closed - won'];
  return null;
  }
  public pageReference closedlost(){
  opps= [ select name,amount,type, stagename from opportunity where stagename='closed - lost'];
  return null;
  }
  }