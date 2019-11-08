trigger accountcon on Account (after insert) {
   list <contact>  cons = new list <contact>();
   for(account a: trigger.new){
        contact c=new contact();
        c.accountid=a.id;
        c.lastname=a.name;
        c.phone=a.phone;
        cons.add(c);
        }
        insert cons;

}