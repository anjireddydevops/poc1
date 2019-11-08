public class AjaxFunctionCon {

    public List<Account> accounts { get; set; }

    public PageReference display() {
        accounts = [SELECT Id,Name,Rating,Industry,Phone FROM Account];
        return null;
    }

}