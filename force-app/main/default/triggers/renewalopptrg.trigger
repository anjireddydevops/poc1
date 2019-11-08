trigger renewalopptrg on Opportunity (after insert,after update) {
  list<Opportunity> opplist = new list<opportunity>();
    for(opportunity o:trigger.new){
        if(o.stagename=='closedwon'){
            Opportunity renewalopp=new Opportunity();
           renewalopp.name='Renewal'+o.name;
            renewalopp.CloseDate=date.today()+90;
            renewalopp.StageName='prospecting';
            renewalopp.OwnerId=o.ownerid;
            renewalopp.accountid=o.accountid;
            opplist.add(o);
            
        }
        if(opplist.isEmpty() && opplist.size()>0){
            insert opplist;
        }
    }

}