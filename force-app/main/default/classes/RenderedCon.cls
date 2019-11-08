public class RenderedCon {

    public boolean ShowPageBlock { get; set; }

    public Account acc { get; set; }
    
    public RenderedCon()
    {
      acc=[SELECT name,phone,rating,industry FROM Account LIMIT 1];
       showpageblock=false;
       }

    public PageReference display() {
       showpageblock=true;
        return null;
        
    }

}