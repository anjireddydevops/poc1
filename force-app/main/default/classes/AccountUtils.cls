public class AccountUtils {
    public static List<Account> accountsByState(String st){

       List<Account> acctList = [SELECT Id, Name FROM Account WHERE billingState = :st];

       return acctList;

    }

}