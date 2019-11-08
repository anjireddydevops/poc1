trigger optactrating on Opportunity (after insert,after update) {
        List<Account> acclist = new List<Account>();
    set<id> accid=new set<id>();
    for(Opportunity op :trigger.new){
        if(op.accountid!=null && op.amount>10000000 ){
            accid.add(op.AccountId);
        }
    }
    list<Account>accounts=[SELECT id,name,rating,industry FROM Account where id IN:accid];
    
    system.debug('=====================' + accounts);
    for(Account a:accounts){
        a.rating='hot';
       acclist.add(a);
    }
    system.debug('====accounts==========' + acclist);
    if(acclist.size()>0){
        update acclist;
    }
    

}