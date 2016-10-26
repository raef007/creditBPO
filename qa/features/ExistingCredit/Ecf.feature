Feature: Creating scripts for Key manager

	Background:
	Given I am on CreditBPO page
	Given I am authenticated user
	When I reach at Business Details 1 screen
	
	@TestECF
	Scenario: Adding Exisiting Credit Facility
	And I reach at Existing Credit Facilities screen
	Then I click and wait on link Add Existing Credit Facilities
    
    And I select Choose here item from lending_institution
    And I select Suppliers' Credit item from purpose_credit_facility
    And I select Choose here item from experience
    And I enter random Text value at field plan_credit_availment
    And I enter random Text value at field outstanding_balance
    And I enter random Text value at field other_remarks
    
    And I enter random Text value at field cash_deposit_details
    And I enter random Text value at field securities_details
    And I enter random Text value at field property_details
    And I enter random Text value at field chattel_details
    And I enter random Text value at field others_details
    
    Then I save Pop Modal form
    
    And I select Suppliers item from lending_institution
    And I select Suppliers' Credit item from purpose_credit_facility
    And I select Fair item from experience
    
    And I type blank data into plan_credit_availment
    And I type 200000 data into plan_credit_availment
    
    And I type blank data into outstanding_balance
    And I type 300000 data into outstanding_balance
    
    And I enter random Text value at field credit_terms
    
    And I enter random Text value at field cash_deposit_amount
    And I enter random Text value at field securities_estimated_value
    And I enter random Text value at field property_estimated_value
    And I enter random Text value at field chattel_estimated_value
    And I enter random Text value at field others_estimated_value
    
    Then I save Pop Modal form
    
    And I type blank data into cash_deposit_amount
    And I type 400000 data into cash_deposit_amount
    
    And I type blank data into securities_estimated_value
    And I type 500000 data into securities_estimated_value
    
    And I type blank data into property_estimated_value
    And I type 600000 data into property_estimated_value
    
    And I type blank data into chattel_estimated_value
    And I type 700000 data into chattel_estimated_value
    
    And I type blank data into others_estimated_value
    And I type 800000 data into others_estimated_value
    
    Then I save Pop Modal form
    
    @TestECF
    Scenario: Delete Existing Credit Facility
    And I reach at Existing Credit Facilities screen
    And I delete record reload-ecf
    And I confirm delete