trigger empannrevenue on Account (before insert) {
  for(account a: trigger.new){
      if(a.industry=='technology')
      {
         if(a.NumberOfEmployees==null && a.annualrevenue==null)
         {
            a.NumberOfEmployees.adderror('employee is mandatory');
            a.annualrevenue.adderror('annual revenue is mandatory');
            }
            }
            }
}