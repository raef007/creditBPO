Feature: Creating scripts for Key manager

	Background:
	Given I am on CreditBPO page
	Given I am authenticated user
	When I reach at Business Details 1 screen
	
	@TestData1
	Scenario: Adding new key manager
	And I reach at Key managers screen
	Then I click on link Add Key Manager
	And I enter random Name value at field firstname
	And I enter random Text value at field middlename
	And I enter random Text value at field lastname
	And I enter random Text value at field nationality
	And I enter random 1980-10-19 value at field birthdate
	And I select Single item from civilstatus
	And I enter random Text value at field profession
	And I enter random Email value at field email
	And I enter random Text value at field address1
	And I enter random Text value at field address2
	And I select Abra item from province
	And I select Bucay item from cityid
	And I select Owned item from present_address_status
	And I enter random 10 value at field no_yrs_present_address
	And I enter random 1234567890 value at field phone
	And I enter random 111-111-111 value at field tin_num
	And I enter random 70 value at field percent_of_ownership
	And I enter random 10 value at field number_of_year_engaged
	And I enter random Text value at field position
	And User choose Save button
	