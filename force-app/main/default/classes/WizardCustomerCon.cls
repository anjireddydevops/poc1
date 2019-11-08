public class WizardCustomerCon {

     Account acc;
    
    Contact con;
    
    opportunity opp;
    
    opportunityContactRole role;


    public Account getAccount() {
        if(acc == null){
            acc = new Account();
        }
        return acc;
    }
    
    
    public Contact getContact() {
         if(con == null){
            con = new Contact();
        }
        return con;
    }


    
    public Opportunity getOpportunity() {
        if(opp == Null){
            opp = new Opportunity();
        }
        return opp;
    }


    public OpportunityContactRole getRole() {
        if(role == Null){
            role = new OpportunityContactRole();
            
        }
        return role;
    }



    public PageReference step1() {
        PageReference pr = new pagereference('/apex/wizard1');
        return pr;
    }


    public PageReference step2() {
        PageReference pr = new pagereference('/apex/wizard2');
        return pr;
    }


    public PageReference step3() {
        PageReference pr = new pagereference('/apex/wizard3');
        return pr;
    }


    
    public PageReference Submit() {
       Insert acc;
       con.accountId = acc.id;
       Insert con;
       opp.accountId = acc.id;
       Insert opp;
       role.contactid = con.id;
       role.opportunityid = opp.id;
       Insert role;

       PageReference pr = new ApexPages.standardController(acc).view();
        return pr;
    }


    public PageReference cancel() {
        PageReference pr = new ApexPages.standardController(acc).view();
        return pr;
    }



}