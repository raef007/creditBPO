Feature: Creating scripts for Key manager

	Background:
	Given I am on CreditBPO page
	Given I am authenticated user
	When I reach at Business Details 1 screen
	
	@TestCondSus
	Scenario: Adding Company Head Succession
	And I reach at Condition and Sustainability screen
	Then I click on link Add Company Head Succession
    And I select Choose your Plan item from succession_plan
    And I select Choose your Time Frame item from succession_timeframe
    Then I clicked Save button of table succession-list-cntr
    
    And I select None of the Above, Less than 5 years item from succession_plan
    And I select Choose your Time Frame item from succession_timeframe
    Then I clicked Save button of table succession-list-cntr
    
    And I select Choose your Plan item from succession_plan
    And I select Over 5 Years item from succession_timeframe
    Then I clicked Save button of table succession-list-cntr
    
    And I select None of the Above, Less than 5 years item from succession_plan
    And I select Over 5 Years item from succession_timeframe
    Then I clicked Save button of table succession-list-cntr
    
    @TestCondSus
	Scenario: Adding Competitive Landscape
	And I reach at Condition and Sustainability screen
	Then I click on link Add  Landscape
    And I select Choose your Landscape item from competition_landscape
    Then I clicked Save button of table competitionlandscape-list-cntr
    
    And I select Limited Market Entry item from competition_landscape
    Then I clicked Save button of table competitionlandscape-list-cntr
    
    @TestCondSus
	Scenario: Adding Important Economic Factors
	And I reach at Condition and Sustainability screen
	Then I click on link Add Important Economic Factors
    And I select Choose here item from ev_susceptibility_economic_recession
    And I select Choose here item from ev_foreign_exchange_interest_sensitivity
    And I select Choose here item from ev_commodity_price_volatility
    And I select Choose here item from ev_governement_regulation
    Then I clicked Save button of table economicfactors-list-cntr
    
    And I select Low item from ev_susceptibility_economic_recession
    And I select Choose here item from ev_foreign_exchange_interest_sensitivity
    And I select High item from ev_commodity_price_volatility
    And I select Choose here item from ev_governement_regulation
    Then I clicked Save button of table economicfactors-list-cntr
    
    And I select Choose here item from ev_susceptibility_economic_recession
    And I select Medium item from ev_foreign_exchange_interest_sensitivity
    And I select Choose here item from ev_commodity_price_volatility
    And I select High item from ev_governement_regulation
    Then I clicked Save button of table economicfactors-list-cntr
    
    And I select Low item from ev_susceptibility_economic_recession
    And I select Medium item from ev_foreign_exchange_interest_sensitivity
    And I select High item from ev_commodity_price_volatility
    And I select High item from ev_governement_regulation
    Then I clicked Save button of table economicfactors-list-cntr
    
    @TestCondSus
	Scenario: Adding Tax Payments
	And I reach at Condition and Sustainability screen
	Then I click on link Add Tax Payments
    And I select Choose here item from tax_payments
    Then I clicked Save button of table taxpayments-list-cntr
    
    And I select Delinquent item from tax_payments
    Then I clicked Save button of table taxpayments-list-cntr
    
    @TestCondSus
	Scenario: Adding Risk Assessment
	And I reach at Condition and Sustainability screen
	Then I click on link Add Risk Assessment
    And I select Choose here item from risk_assessment_name[0]
    And I select Choose here item from risk_assessment_solution[0]
    Then I clicked Save button of table ra-list-cntr
    
    And I select Choose here item from risk_assessment_name[0]
    And I select Cost Leadership item from risk_assessment_solution[0]
    Then I clicked Save button of table ra-list-cntr
    
    And I select Bargaining power of buyers item from risk_assessment_name[0]
    And I select Choose here item from risk_assessment_solution[0]
    Then I clicked Save button of table ra-list-cntr
    
    And I select Bargaining power of buyers item from risk_assessment_name[0]
    And I select Cost Leadership item from risk_assessment_solution[0]
    Then I clicked Save button of table ra-list-cntr
    
    @TestCondSus
    Scenario: Delete newly created Risk Assessment
    And I reach at Condition and Sustainability screen
    And I delete newly created Risk Assessment
    And I confirm delete
    
    @TestCondSus
	Scenario: Adding Revenue Growth Potential
	And I reach at Condition and Sustainability screen
	Then I click on link Add Revenue Growth Potential
    And I select Choose here item from current_market[0]
    And I select Choose here item from new_market[0]
    Then I clicked Save button of table rev-growth-list-cntr
    
    And I select Choose here item from current_market[0]
    And I select Between 3% to 5% item from new_market[0]
    Then I clicked Save button of table rev-growth-list-cntr
    
    And I select Greater than 5% item from current_market[0]
    And I select Choose here item from new_market[0]
    Then I clicked Save button of table rev-growth-list-cntr
    
    And I select Greater than 5% item from current_market[0]
    And I select Between 3% to 5% item from new_market[0]
    Then I clicked Save button of table rev-growth-list-cntr
    
    @TestCondSus
    Scenario: Delete newly created Revenue Growth Potential
    And I reach at Condition and Sustainability screen
    And I delete newly created Growth Potential
    And I confirm delete
    
    @TestCondSus
	Scenario: Adding Capital Investment for Expansion
	And I reach at Condition and Sustainability screen
	Then I click on link Add Capital Investment for Expansion
    Then I clicked Save button of table phpm-list-cntr
    
    And I enter random Text value at field current_year[0]
    And I enter random Text value at field new_year[0]
    Then I clicked Save button of table phpm-list-cntr
    
    And I type blank data into current_year[0]
    And I type blank data into new_year[0]
    And I type 200000 data into current_year[0]
    And I type 400000 data into new_year[0]
    Then I clicked Save button of table phpm-list-cntr
    
    @TestCondSus
    Scenario: Delete newly created Capital Investment for Expansion
    And I reach at Condition and Sustainability screen
    And I delete newly created Investment Expansion
    And I confirm delete