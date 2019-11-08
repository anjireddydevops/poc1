trigger copybillingaddress on Account (before insert) {
    for(account a:trigger.new)
    {
        if(a.ShippingState==null)
        {
            a.ShippingCity=a.BillingCity;
            a.ShippingCountry=a.BillingCountry;
            a.ShippingStreet=a.BillingStreet;
            a.ShippingState=a.BillingState;
        }
    }

}