trigger phonenomand on Account (before insert) {

for(account a:trigger.new){
 if(a.phone==null)
 {
   a.phone.adderror('phone no is mandatory');
}
}
}