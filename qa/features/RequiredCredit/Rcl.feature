Feature: Creating scripts for Key manager

	Background:
	Given I am on CreditBPO page
	Given I am authenticated user
	When I reach at Business Details 1 screen
	
	@TestRCL
	Scenario: Adding Required Credit Line
	And I reach at Required Credit Line screen
	Then I click and wait on link Add Requested Credit Facilities
    
    And I select Others (Pls Specify) item from purpose_credit_facility
    And I enter random Text value at field plan_credit_availment
    And I enter random Text value at field other_remarks
    
    And I enter random Text value at field cash_deposit_details
    And I enter random Text value at field securities_details
    And I enter random Text value at field property_details
    And I enter random Text value at field chattel_details
    And I enter random Text value at field others_details
    
    Then I save Pop Modal form
    
    And I type blank data into plan_credit_availment
    And I type 200000 data into plan_credit_availment
    
    And I enter random Text value at field purpose_credit_facility_others
    
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