trigger ChangeContactOwner on Contact (before insert ,before update) {
    set <id> accid=new set<id>();
    for(contact c:trigger.new){
        if(c.AccountId==null){
           accid.add(c.AccountId);
        }
    }
    map<id,Account> accmap=new map<id,Account>([ SELECT id,name,ownerId from Account where id in:accid]);
    for(contact c:trigger.new){
    c.OwnerId=accmap.get(c.AccountId).ownerid;
}
}