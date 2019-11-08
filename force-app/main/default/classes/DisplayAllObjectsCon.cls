public class DisplayAllObjectsCon {

   public String objselected { get; set; }
    public Map<String, Schema.SObjectType> AllobjMap;
    
    public DisplayAllObjectsCon(){
    
         AllobjMap=new  Map<String, Schema.SObjectType>();
         AllobjMap=Schema.getGlobalDescribe();
   }
    
   
    public  list<selectoption> getObjects() {
    
        list<selectoption> optionlist=new list<selectoption>();
            
            for(string s:AllobjMap.keyset()){
            
                optionlist.add(new selectoption(s,s));
                }
                
        return optionlist;
    
}
}