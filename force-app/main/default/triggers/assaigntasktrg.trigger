trigger assaigntasktrg on Case (before insert) {
    list<task> tasklst=new list<task>();
    for(case c : trigger.new){
        task t=new task();
        t.OwnerId=c.ownerid;
        t.Status=c.Status;
        t.Priority='high';
        t.Description=c.Description;
        t.subject='start working on case';
        t.WhatId=c.Id;
        tasklst.add(t);
    }
    if (tasklst!=null && tasklst.size()>0){
    insert tasklst;
    }
}