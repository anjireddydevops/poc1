/**
 * @File Name          : AccountController.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 8/11/2019, 1:45:15 pm
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    8/11/2019   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public with sharing class AccountController {
  public static List<Account> getAllActiveAccounts() {
    return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
  
  
  
  
  
  
  /**
 * @File Name          : AccountController.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 8/11/2019, 1:45:15 pm
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    8/11/2019   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
  
  
  
  
  
  }



}