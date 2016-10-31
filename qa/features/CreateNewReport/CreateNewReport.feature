Feature: Fill business details 1

Background: 
  Given I am authenticated user
  When I reach the New Report screen
  
  @NewReport-test
  Scenario: Verify below are the required fields at "CreditBPO Create New Report" Page
  When I click Register inputBtn
  Then I should get error This field is required
  
  @NewReport-test
  Scenario: Verify SME able to create new report with fill invalid data like blank space into all required fields
  When I type notanemailaddress data into email
  And I type Auto Test data into companyname
  And I wait 5 seconds
  Then I should get error Email address is not valid
  
  @NewReport-test
  Scenario: Verify SME able to create new report with fill valid data into all required fields
  When I type pilocortes+autotest@gmail.com data into email
  And I type Auto Test data into companyname
  And I type www.mywebsite.com data into website
  And I wait 5 seconds
  And I click Register inputBtn
  And I wait 5 seconds
  Then I should see text Read the Mandated Agreement
  
  
  