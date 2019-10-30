// *Listing 10-1: The original state of CallingCode.cls, which directly performs SOQL queries of a configuration object*


public with sharing class CallingCode {
  public CallingCode() {
    String product = 'myProduct';
    Boolean enabled = [SELECT feature_enabled__c 
                       FROM Configuration_Object__c 
                       WHERE product__c = :product][0]
      .feature_enabled__c;
  }
}
