Feature: Fill business details 1

Background: 
  Given I am authenticated user
  When I reach at Business Details 1 screen

  @Data-test
  Scenario: Test company name data
  When I click on companyname data
  And I type blank data into companyname
  And I hit the submit check mark
  Then I should get error The Company Name field is required
  And I type The Stark Industries data into companyname  
  And I hit the submit check mark

  @Data-test
  Scenario: Test company Tin number 
  When I click on company_tin data
  And I type blank data into company_tin
  And I hit the submit check mark
  Then I should get error The Company TIN field is required
  And I type 6325462318 data into company_tin  
  And I hit the submit check mark

  @Data-test
  Scenario: Test entity type field 
  When I click on entity_type data
  And I select blank item from entity_type
  And I hit the submit check mark
  Then I should get error The Entity Type field is required
  And I select Corporation item from entity_type  
  And I hit the submit check mark

  @Data-test
  Scenario: Test Tin Number field 
  When I click on tin_num data
  And I type blank data into tin_num
  And I hit the submit check mark
  Then I should get error The Business Registration Number field is required
  And I type REG1234 data into tin_num  
  And I hit the submit check mark

  @Data-test
  Scenario: Test SEC Reg Date field
  When I click on sec_reg_date data
  And I type blank data into sec_reg_date
  And I hit the submit check mark
  Then I should get error The Registration Date field is required
  And I type 1900 data into sec_reg_date
  And I hit the submit check mark
  Then I should get error The sec reg date does not match the format Y-m-d
  And I type 2016-09-15 data into sec_reg_date  
  And I hit the submit check mark


  @Data-test
  Scenario: Test biz_details.email field
  When I click on biz_details.email data
  And I type blank data into email
  And I hit the submit check mark
  Then I should get error The Company Email field is required
  And I type test@test.com data into email
  And I hit the submit check mark

