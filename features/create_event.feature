@chrome
  Feature: We need to test create event feature
    Scenario: Create new event and save it
      Given I logged as admin
      And I wait for 30 seconds
      And I should see "ParentAps Company"
      And I click on "Kids Palace"
      And I wait for 30 seconds
      And I am on "Calendar" tab
      And I wait for 30 seconds
      And I should see "My Calendar"
      And I click the "Create event" button
      And I wait for 30 seconds
      And I have entered "Test Event" into "Event title"
      And I select "Kids Palace (Children and staff)" from Recipients
      And I have enterd date "05 Jun" into "Select date"
      And I select time To "03:00 PM"
      And I select time From "02:00 PM"
      When I click the "Save" button
      Then I should see "The calendar event has been registered."