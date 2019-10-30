// *Listing 10-2: ConfigService.cls, an abstraction layer that contains both the old and the new ways of accessing configuration data *


public with sharing abstract class ConfigService {
  public static Boolean isFeatureEnabled(String product) {
    // return theOldWay(product);
    return theNewWay(product);
  }

  private static Boolean theOldWay(String product) {
    return [SELECT feature_enabled__c 
            FROM Configuration_Object__c 
            WHERE product__c = :product][0]
      .feature_enabled__c;
  }

  private static Boolean theNewWay(String product) {
    return [SELECT feature_enabled__c 
            FROM Configuration_Metadata__mdt 
            WHERE product__c = :product][0]
      .feature_enabled__c;
  }
}
