public class GeneratePDFCon {

    public list<Opportunity> opps { get; set; }
    public GeneratePDFCon(){
    opps=[SELECT name,stagename,closedate,amount,leadsource FROM Opportunity];
    }
    
    
}