public class PrintNumber {
    integer i;
    public void print(){
        for(i=1;i<=100;i++){
            
            if(math.mod(i, 3)==0){
                system.debug('T');
                
            }
            else  if(math.mod(i, 7)==0){
                system.debug('S');
               
            }
            else if((math.mod(i, 3)==0)&&(math.mod(i, 7)==0)){
                                system.debug('TS');
                
            }
               else
                   system.debug( '+i');
                  
            
        }
    }

}