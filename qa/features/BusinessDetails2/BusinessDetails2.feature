Feature: Test Cases for Business Details II

	Background:
	Given I am on CreditBPO page
	Given I am authenticated user
	When I reach at Business Details 1 screen
	And I reach at Business Details 2 screen
	
	@Data-test
	Scenario: Add Major Customers
	And I click on link Add Major Customer/s
	And I clicked Save button of table major-cust-list-cntr
	Then I should get error This field is required
	And I enter random Text value at field customer_name[0]
	And I enter random Text value at field customer_address[0]
	And I enter random Text value at field customer_contact_person[0]
	And I type 987654321 data into customer_phone[0]
	And I enter random Email value at field customer_email[0]
	And I type 2010 data into customer_started_years[0]
	And I type 10 data into customer_share_sales[0]
	And I select Regularly item from customer_order_frequency[0]
	And I select Ahead of Due Date item from customer_settlement[0]
	Then I clicked Save button of table major-cust-list-cntr
	
	@Data-test
	Scenario: Delete Major Customer
	And I delete one item in major-cust-list-cntr
	Then I confirm the delete
	
	@Data-test 
	Scenario: Add Major Suppliers
	And I click on link Add Major Supplier/s
	And I clicked Save button of table major-supp-list-cntr
	Then I should get error This field is required
	And I enter random Text value at field supplier_name[0]
	And I enter random Text value at field supplier_address[0]
	And I enter random Text value at field supplier_contact_person[0]
	And I type 987654321 data into supplier_phone[0]
	And I enter random Email value at field supplier_email[0]
	And I type 2010 data into supplier_started_years[0]
	And I type 10 data into supplier_share_sales[0]
	And I select COD item from supplier_order_frequency[0]
	And I select Ahead of Due Date item from supplier_settlement[0]
	And I type 10000 data into average_monthly_volume[0]
	And I enter random Text value at field item_1[0]
	And I enter random Text value at field item_2[0]
	And I enter random Text value at field item_3[0]
	Then I clicked Save button of table major-supp-list-cntr
	
	@Data-test
	Scenario: Delete Major Suppliers
	And I delete one item in major-supp-list-cntr
	Then I confirm the delete
	
	@Data-test 
	Scenario: Add Major Market Location
	And I click on link Add Major Market Location
	And I clicked Save button of table major-loc-list-cntr
	Then I should get error This field is required
	And I select Baguio item from marketlocation[0]
	Then I clicked Save button of table major-loc-list-cntr
	
	@Data-test
	Scenario: Delete Major Market Location
	And I delete one item in major-loc-list-cntr
	Then I confirm the delete
	
	@Data-test 
	Scenario: Add  Competitors
	And I click on link Add  Competitors
	And I clicked Save button of table competitor-list-cntr
	Then I should get error The Name field is required
	And I enter random Text value at field competitor_name[0]
	And I enter random Text value at field competitor_address[0]
	And I type 987654321 data into competitor_phone[0]
	And I enter random Email value at field competitor_email[0]
	Then I clicked Save button of table competitor-list-cntr
	
	@Data-test
	Scenario: Delete Competitors
	And I delete one item in competitor-list-cntr
	Then I confirm the delete
	
	@Data-test 
	Scenario: Add Business Driver/s
	And I click on link Add Business Driver/s
	And I clicked Save button of table bizdriver-list-cntr
	Then I should get error This field is required
	And I enter random Text value at field businessdriver_name[0]
	And I type 10 data into businessdriver_total_sales[0]
	Then I clicked Save button of table bizdriver-list-cntr
	
	@Data-test
	Scenario: Delete Business Driver/s
	And I delete one item in bizdriver-list-cntr
	Then I confirm the delete
	
	@Data-test 
	Scenario: Add Customer Segment
	And I click on link Add Customer Segment
	And I clicked Save button of table bizsegment-list-cntr
	Then I should get error This field is required
	And I enter random Text value at field businesssegment_name[0]
	Then I clicked Save button of table bizsegment-list-cntr
	
	@Data-test
	Scenario: Delete Customer Segment
	And I delete one item in bizsegment-list-cntr
	Then I confirm the delete
	
	@Data-test
	Scenario: Add Past Projects Completed 
	And I click on link Add Past Projects Completed
	And I clicked Save button of table past-proj-list-cntr
	Then I should get error This field is required
	And I enter random Text value at field projectcompleted_name[0]
	And I type 10000 data into projectcompleted_cost[0]
	And I select Organic Profit Growth item from projectcompleted_source_funding[0]
	And I type 2010 data into projectcompleted_year_began[0]
	And I select Very Satisfactory item from projectcompleted_result[0]
	Then I clicked Save button of table past-proj-list-cntr
	
	@Data-test
	Scenario: Delete Past Projects Completed 
	And I delete one item in past-proj-list-cntr
	Then I confirm the delete
	
	@Data-test 
	Scenario: Add Future Growth Initiatives
	And I click on link Add Future Growth Initiatives
	And I clicked Save button of table future-growth-list-cntr
	Then I should get error This field is required
	And I enter random Text value at field futuregrowth_name[0]
	And I type 10000 data into futuregrowth_estimated_cost[0]
	And I type 2017-01-01 data into futuregrowth_implementation_date[0]
	And I select Organic Profit Growth item from futuregrowth_source_capital[0]
	And I select Increase sales item from planned-proj-goal[0]
	And I select 0 - 5 % item from planned-goal-increase[0]
	And I type 2017-01 data into proj-benefit-date[0]
	Then I clicked Save button of table future-growth-list-cntr
	
	@Data-test
	Scenario: Delete Future Growth Initiatives
	And I delete one item in future-growth-list-cntr
	Then I confirm the delete