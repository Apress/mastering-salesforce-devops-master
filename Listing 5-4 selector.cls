// *Listing 5-4: An example of Selector syntax showing multiple methods chained together (from Trailhead)*


public List<OpportunityInfo> selectOpportunityInfo(Set<Id> idSet) {
  List<OpportunityInfo> opportunityInfos = new List<OpportunityInfo>();
  for(Opportunity opportunity : Database.query(
      newQueryFactory(false).
        selectField(Opportunity.Id).
        selectField(Opportunity.Amount).
        selectField(Opportunity.StageName).
        selectField('Account.Name').
        selectField('Account.AccountNumber').
        selectField('Account.Owner.Name').
        setCondition('id in :idSet').
        toSOQL()))
    opportunityInfos.add(new OpportunityInfo(opportunity));
  return opportunityInfos;
}
