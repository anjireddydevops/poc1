public class updateratingcontr {
    public static void updateRating(list<Account> acts){
        for(account a:acts)
        {
             if(a.annualrevenue>=10000000)
             {
                 a.rating= 'hot';
             }
            if(a.annualrevenue>2500000 && a.annualrevenue<100000000)
             {
                 a.rating= 'warm';
             }
            if(a.annualrevenue>500000 && a.annualrevenue<=2500000)
             {
                 a.rating= 'cold';
             }
               else{
                   a.rating= 'blank';
               }
        }
    }

}