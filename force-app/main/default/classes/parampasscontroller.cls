public class parampasscontroller {

    public decimal result { get; set; }


    public integer num2 { get; set; }

    public integer num1 { get; set; }
    
     public PageReference add() {
     
     result = num1+num2;
     
        return null;
    }
    
    
     public PageReference sub() {
     
     result=num1-num2;
        return null;
    }
    
    public PageReference mul() {
    
    result=num1*num2;
        return null;
    }
    
     public PageReference dev() {
     
     result=system.math.mod(num1,num2);
        return null;
    }


}