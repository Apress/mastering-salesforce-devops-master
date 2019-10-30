// *Listing 8-1: A sample BDD-style test in Apex*


@isTest
static void itShouldUpdateReservedSpotsOnInsert() {
  System.runAs(TestUtil.careerPlanner()) {
  // Given
  Workshop__c thisEvent = TestFactory.aWorkshopWithFreeSpaces();
  Integer initialAttendance = TestUtil.currentAttendance(thisEvent);
  final Integer PRIMARY_ATTENDEES = 3;
  final Integer NUMBER_EACH = 4;

  // When
  Test.startTest();
  TestFactory.insertAdditionalRegistrations(thisEvent, PRIMARY_ATTENDEES, NUMBER_EACH);
  Test.stopTest();

  // Then
  Integer expectedAttendance = initialAttendance + PRIMARY_ATTENDEES * NUMBER_EACH;
  system.assertEquals(expectedAttendance, TestUtil.currentAttendance(thisEvent),
    'The attendance was not updated correctly after an insert');
  }
}


