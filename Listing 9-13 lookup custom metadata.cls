// *Listing 9-13: An example of looking up Custom Metadata records based on an Org ID*


public static String getEndpoint(String serviceName) {
  String orgId = UserInfo.getOrganizationId(); 
  
  API_Endpoint__mdt endpoint = [
    SELECT URL__c 
    FROM API_Endpoint__mdt 
    WHERE OrgId__c = :orgId 
      AND ServiceName__c = :serviceName 
      AND isActive__c=true 
    LIMIT 1];
  
  return endpoint; 
}
