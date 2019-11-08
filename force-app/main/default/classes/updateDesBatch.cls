global class updateDesBatch implements database.Batchable<sobject> {
    
    global Database.querylocator start(Database.BatchableContext bc){
        string query='select description from account';
        return Database.getquerylocator(query);
    }
    global void execute(Database.BatchableContext bc, List<account> batch){
        list<account> acclist=new list <account>();
        for(account a: batch) {
            a.description='just now edited';
            acclist.add(a);
            update acclist;
            }
    }
    global void finish(Database.BatchableContext bc){
        
    }
    

}