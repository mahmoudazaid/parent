@chrome
  Feature:
    Scenario:
      Given I logged as admin
      And I pause
      And I should see "demo@parent.eu"
      And I click on "Kids Palace" button
      And I pause
      And I click on "Calendar" tab
      And I pause
      And I should see "My Calendar"
      And I click on "Create weekly schedule" button
