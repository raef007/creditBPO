Feature: Test Login scenario as POC

  Background:
    Given I am on CreditBPO page
	
	@login-test
	Scenario: Login into the application
	When I redirect at login page
	And I enter the login email
	And I enter the login password
	And I click Log In button
	Then I am on the dashboard page
	And I logout