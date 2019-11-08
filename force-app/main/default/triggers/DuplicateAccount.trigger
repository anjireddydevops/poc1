trigger DuplicateAccount on Account (before insert,before update) {
    for(account a:trigger.new){
        list <account> acc=[select name from account where name=:a.name];
        if(acc.size()>0){
            a.Name.adderror('duplicates are not allowed');
        }
    }
}