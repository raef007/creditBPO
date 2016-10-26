Feature: Creating scripts for Key manager

	Background:
	Given I am on CreditBPO page
	Given I am authenticated user
	When I reach at Business Details 1 screen
	
	@TestOwner
	Scenario: Adding Owner Details
	And I reach at Owner Details screen
	Then I click and wait on link Add Owner & Key Management
    
    And I enter random Text value at field firstname
    And I enter random Text value at field middlename
    And I enter random Text value at field lastname
    And I enter random Text value at field nationality
    And I type 1990-03-15 data into birthdate
    And I enter random Text value at field profession
    And I select Married item from civilstatus
    And I enter random Email value at field email
    And I enter random Text value at field address1
    And I enter random Text value at field address2
    And I select Makati item from province
    And I select Bel-air item from cityid
    And I select Owned item from present_address_status
    And I type 25 data into no_yrs_present_address
    And I enter random Text value at field phone
    And I type 111-111-111 data into tin_num
    And I type 23 data into percent_of_ownership
    And I type 11 data into number_of_year_engaged
    And I enter random Text value at field position
    
    And I enter random Text value at field bus_name[0]
    And I enter random Text value at field bus_type[0]
    And I select Bacoor item from bus_location[0]
    
    And I enter random Text value at field km_firstname
    And I enter random Text value at field km_middlename
    And I enter random Text value at field km_lastname
    And I enter random Text value at field km_nationality
    And I type 1990-03-15 data into km_birthdate
    And I enter random Text value at field km_profession
    And I select Married item from km_civilstatus
    And I enter random Email value at field km_email
    And I enter random Text value at field km_address1
    And I enter random Text value at field km_address2
    And I select Makati item from km_province
    And I select Bel-air item from km_cityid
    And I select Owned item from km_present_address_status
    And I type 25 data into km_no_yrs_present_address
    And I enter random Text value at field km_phone
    And I type 111-111-111 data into km_tin_num
    And I type 23 data into km_percent_of_ownership
    And I type 11 data into km_number_of_year_engaged
    And I enter random Text value at field km_position
    
    And I enter random Text value at field school_name[0]
    And I select Graduated item from educ_degree[0]
    
    And I enter random Text value at field sfirstname
    And I enter random Text value at field smiddlename
    And I enter random Text value at field slastname
    And I enter random Text value at field snationality
    And I type 1990-03-15 data into sbirthdate
    And I enter random Text value at field sprofession
    And I enter random Email value at field emailspouse
    And I enter random Text value at field sphone
    And I type 111-111-111 data into stin_num
    
    And I enter random Text value at field sbus_name[0]
    And I enter random Text value at field sbus_type[0]
    And I select Bacoor item from sbus_location[0]
    
    And I enter random Text value at field sschool_name[0]
    And I select Graduated item from seduc_degree[0]
    Then I save Owner details
    
    @TestOwner
    Scenario: Adding Personal Loans
	And I reach at Owner Details screen
	Then I click Owner's name
    Then on slider I click button Owner Details
    Then I click and wait on link Add Personal Loans
    And I enter random Text value at field balance[0]
    And I enter random Text value at field monthly_amortization[0]
    And I enter random Text value at field due_date[0]
    Then I save Pop Modal form
    
    And I type blank data into balance[0]
    And I type blank data into monthly_amortization[0]
    And I type blank data into due_date[0]
    And I type 50000 data into balance[0]
    And I type 5000 data into monthly_amortization[0]
    And I enter random Text value at field creditor[0]
    And I type 2017-03-15 data into due_date[0]
    Then I save Pop Modal form
    
    @TestOwner
    Scenario: Adding Key Manager
	And I reach at Owner Details screen
	Then I click Owner's name
    Then on slider I click button Owner Details
    Then on slider I click button Key Manager
    Then I click and wait on link Add Key Manager
    Then I save Pop Modal form
    
    And I enter random Text value at field birthdate
    And I enter random Text value at field email
    And I enter random Text value at field tin_num
    And I enter random Text value at field percent_of_ownership
    And I enter random Text value at field number_of_year_engaged
    Then I save Pop Modal form
    
    And I type blank data into birthdate
    And I type blank data into email
    And I type blank data into tin_num
    And I type blank data into percent_of_ownership
    And I type blank data into number_of_year_engaged
    
    And I enter random Text value at field firstname
    And I enter random Text value at field middlename
    And I enter random Text value at field lastname
    And I enter random Text value at field nationality
    And I type 1990-03-15 data into birthdate
    And I enter random Text value at field profession
    And I select Married item from civilstatus
    And I enter random Email value at field email
    And I enter random Text value at field address1
    And I enter random Text value at field address2
    And I select Makati item from province
    And I select Bel-air item from cityid
    And I select Owned item from present_address_status
    And I type 25 data into no_yrs_present_address
    And I enter random Text value at field phone
    And I type 111-111-111 data into tin_num
    And I type 23 data into percent_of_ownership
    And I type 11 data into number_of_year_engaged
    And I enter random Text value at field position
    Then I save Pop Modal form
    
    @TestOwner
    Scenario: Adding Owner Other Business
	And I reach at Owner Details screen
	Then I click Owner's name
    Then on slider I click button Other Business Currently Managed/Owned
    Then I click and wait on link Add Other Business Currently Managed/Owned
    Then I save Pop Modal form
    
    And I enter random Text value at field bus_name[0]
    And I enter random Text value at field bus_type[0]
    And I select Manila item from bus_location[0]
    Then I save Pop Modal form
    
    @TestOwner
    Scenario: Adding Owner Educational Background
	And I reach at Owner Details screen
	Then I click Owner's name
    Then on slider I click button Educational Background
    Then I click and wait on link Add Educational Background
    Then I save Pop Modal form
    
    And I enter random Text value at field school_name[1]
    And I select Graduated item from educ_degree[1]
    Then I save Pop Modal form
    
    @TestOwner
    Scenario: Adding Spouse Other Business
	And I reach at Owner Details screen
	Then I click Owner's name
    Then on slider I click button Spouse Personal Details
    Then on slider I click button Spouse: Other Business Currently Managed/Owned
    Then I click and wait on link Add Other Business Currently Managed/Owned (Spouse)
    Then I save Pop Modal form
    
    And I enter random Text value at field bus_name[0]
    And I enter random Text value at field bus_type[0]
    And I select Manila item from bus_location[0]
    Then I save Pop Modal form
    
    @TestOwner
    Scenario: Adding Spouse Educational Background
	And I reach at Owner Details screen
	Then I click Owner's name
    Then on slider I click button Spouse Personal Details
    Then on slider I click button Spouse Educational Background
    Then I click and wait on link Add Spouse Educational Background
    Then I save Pop Modal form
    
    And I enter random Text value at field school_name[1]
    And I select Graduated item from educ_degree[1]
    Then I save Pop Modal form
    
    @TestOwner
    Scenario: Deleting Personal Loans
	And I reach at Owner Details screen
    Then I click Owner's name
    
    Then on slider I click button Owner Details
    And I click delete owner details delete-loans
    And I confirm delete
    
    @TestOwner
    Scenario: Deleting Key Manager
	And I reach at Owner Details screen
    Then I click Owner's name
    
    Then on slider I click button Key Manager
    And I click delete owner details delete-keymanager
    And I confirm delete
    
    @TestOwner
    Scenario: Deleting Owner Business
	And I reach at Owner Details screen
    Then I click Owner's name
    
    Then on slider I click button Other Business Currently Managed/Owned
    And I click delete owner details delete-business
    And I confirm delete
    
    @TestOwner
    Scenario: Deleting Owner Education
	And I reach at Owner Details screen
    Then I click Owner's name
    
    Then on slider I click button Educational Background
    And I click delete owner details delete-education
    And I confirm delete
    
    @TestOwner
    Scenario: Deleting Spouse Business
	And I reach at Owner Details screen
    Then I click Owner's name
    
    Then on slider I click button Spouse Personal Details
    Then on slider I click button Spouse: Other Business Currently Managed/Owned
    And I click delete owner details delete-sbusiness
    And I confirm delete
    
    @TestOwner
    Scenario: Deleting Spouse Education
	And I reach at Owner Details screen
    Then I click Owner's name
    
    Then on slider I click button Spouse Personal Details
    Then on slider I click button Spouse Educational Background
    And I click delete owner details delete-seducation
    And I confirm delete
    