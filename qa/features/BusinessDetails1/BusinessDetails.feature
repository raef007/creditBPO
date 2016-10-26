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
  
  @Data-test 
  Scenario: Test SEC Company number
  When I click on biz_details.tin_num data
  And I type blank data into tin_num
  And I hit the submit check mark
  Then I should get error The Business Registration Number field is required
  And I type Company Number data into tin_num  
  And I hit the submit check mark

  @Data-test
  Scenario: Test SEC Company date
  When I click on biz_details.sec_reg_date data
  And I type blank data into sec_reg_date
  And I hit the submit check mark
  Then I should get error The Registration Date field is required
  And I type 2016-09-07 data into sec_reg_date  
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Total Asset Grouping
  When I click on biz_details.total_asset_grouping data
  And I select blank item from total_asset_grouping
  And I hit the submit check mark
  Then I should get error The Total Asset Grouping field is required
  Then I select Large - over Php 100 million item from total_asset_grouping 
  And I hit the submit check mark
  
  @Data-test 
  Scenario: Test Total Assets
  When I click on biz_details.total_assets data
  And I type blank data into total_assets
  And I hit the submit check mark
  Then I should get error The Total Assets 
  And I type asda data into total_assets
  And I hit the submit check mark
  Then I should get error The total assets must be a number
  And I type 12 data into total_assets  
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Company email
  When I click on biz_details.email data
  And I type blank data into email
  And I hit the submit check mark
  Then I should get error The Company Email field is required
  And I type asda data into email
  And I hit the submit check mark
  Then I should get error The Company Email must be a valid email address
  And I type test123@gmail.com data into email  
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Primary Business Address, Room Building Street:
  When I click on biz_details.address1 data
  And I type blank data into address1
  And I hit the submit check mark
  Then I should get error The Primary Business Address, Room Building Street field is required
  And I type Test 89 data into address1  
  And I hit the submit check mark
  
 
 #@Data-test
  #Scenario: Test Primary Business Address, Province: 
  #When I click on biz_details.province data
  #And I type blank data into biz_details.province
  #And I hit the submit check mark
  #Then I should get error The Primary Business Address, Room Building Street field is required
  #And I type  data into biz_details.province  
  #And I hit the submit check mark

  
  @Data-test 
  Scenario: Test Primary Business Address, Telephone:
  When I click on biz_details.phone data
  And I type blank data into phone
  And I hit the submit check mark
  Then I should get error The Primary Business Address, Telephone field is required
  And I type 1234567890 data into phone
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test No. of Years in Present Address:
  When I click on biz_details.no_yrs_present_address data
  And I type blank data into no_yrs_present_address
  And I hit the submit check mark
  Then I should get error The No. of Years in Present Address field is required
  And I type asda data into no_yrs_present_address
  And I hit the submit check mark
  Then I should get error The No. of Years in Present Address must be a number
  And I type 12 data into no_yrs_present_address  
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Date Established / Incorporated: 
  When I click on biz_details.date_established data
  And I type blank data into date_established
  And I hit the submit check mark
  Then I should get error The Date Established / Incorporated field is required
  And I type 123123 data into date_established
  And I hit the submit check mark
  Then I should get error Date Established Invalid Format
  And I type 2016-09-20 data into date_established  
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test No. of Years in Business:
  When I click on biz_details.number_year data
  And I type blank data into number_year
  And I hit the submit check mark
  Then I should get error The No. of Years in Business field is required
  And I type asds data into number_year
  And I hit the submit check mark
  Then I should get error The No. of Years in Business must be a number
  And I type 20 data into number_year  
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Employee Size
  When I click on biz_details.employee_size data
  And I select blank item from employee_size
  And I hit the submit check mark
  Then I should get error The Employee Size field is required
  Then I select 21 to 50 item from employee_size
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Updated Date
  When I click on biz_details.updated_date data
  And I type blank data into updated_date
  And I hit the submit check mark
  Then I should get error The Updated Date field is required
  And I type 1234567890 data into updated_date
  And I hit the submit check mark
  Then I should get error Updated Date Invalid Format
  And I type 2016-09-05 data into updated_date  
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Number of Years Management Team has been Engaged in this Business
  When I click on biz_details.number_year_management_team data
  And I type blank data into number_year_management_team
  And I hit the submit check mark
  Then I should get error The Number of Years Management Team has been Engaged in this Business field is required
  And I type asas data into number_year_management_team
  And I hit the submit check mark
  Then I should get error The Number of Years Management Team has been Engaged in this Business must be a number
  And I type 12 data into number_year_management_team  
  And I hit the submit check mark
  
  @Data-test  
  Scenario: Test Requesting Bank
  When I click on biz_details.is_independent data
  And I select blank item from is_independent
  And I hit the submit check mark
  Then I should get error The Requesting Bank field is required
  Then I select I am applying independently item from is_independent 
  And I hit the submit check mark
  
  @Data-test @adfafsdfs
  Scenario: Test Affiliates / Subsidiaries name
  When I click on affiliates.related_company_name data
  And I type blank data into related_company_name
  And I hit the submit check mark
  Then I should get error The Name field is required
  And I type Affiliate Company data into related_company_name  
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Affiliates / Subsidiaries Address Line 1
  When I click on affiliates.related_company_address1 data
  And I type blank data into related_company_address1
  And I hit the submit check mark
  Then I should get error The Address Line 1 field is required
  And I type FC data into related_company_address1  
  And I hit the submit check mark
  
  @Data-test 
  Scenario: Test Affiliates / Subsidiaries Address Line 2
  When I click on affiliates.related_company_address2 data
  And I type blank data into related_company_address2 
  And I hit the submit check mark
  When I click on affiliates.related_company_address2 data
  And I type FC data into related_company_address2  
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Affiliates / Subsidiaries Phone number
  When I click on affiliates.related_company_phone data
  And I type blank data into related_company_phone
  And I hit the submit check mark
  Then I should get error The Phone Number field is required
  And I type 7833367363 data into related_company_phone 
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Affiliates / Subsidiaries email
  When I click on affiliates.related_company_email data
  And I type blank data into related_company_email
  And I hit the submit check mark
  Then I should get error The related company email field is required
  And I type asda data into related_company_email
  And I hit the submit check mark
  Then I should get error The related company email must be a valid email address
  And I type Affiliate Company data into related_company_email  
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Products/Services Offered name
  When I click on offers.servicesoffer_name data
  And I type blank data into servicesoffer_name
  And I hit the submit check mark
  Then I should get error The Products/Services Offered field is required
  And I type Test data into servicesoffer_name 
  And I hit the submit check mark
  
   @Data-test
  Scenario: Test Products/Services Offered Target Market
  When I click on offers.servicesoffer_targetmarket data
  And I type blank data into servicesoffer_targetmarket
  And I hit the submit check mark
  Then I should get error The Target Market field is required
  And I type Tester data into servicesoffer_targetmarket 
  And I hit the submit check mark
  
   @Data-test
  Scenario: Test Products/Services Offered Share to Total Sales
  When I click on offers.servicesoffer_share_revenue data
  And I type blank data into servicesoffer_share_revenue
  And I hit the submit check mark
  Then I should get error The Share to Total Sales 
  And I type asdf data into servicesoffer_share_revenue
  And I hit the submit check mark
  Then I should get error The Share to Total Sales 
  And I type 20 data into servicesoffer_share_revenue 
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Products/Services Offered Seasonality
  When I click on offers.servicesoffer_seasonality data
  And I select blank item from servicesoffer_seasonality
  And I hit the submit check mark
  Then I should get error The Seasonality field is required
  Then I select Year-Round item from servicesoffer_seasonality 
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Authorized Capital (PHP)
   When I click on capital_details.capital_authorized data
  And I type blank data into capital_authorized
  And I hit the submit check mark
  Then I should get error The Authorized Capital 
  And I type asdf data into capital_authorized
  And I hit the submit check mark
  Then I should get error The Authorized Capital 
  And I type 20 data into capital_authorized 
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Issued Capital (PHP)
  When I click on capital_details.capital_issued data
  And I type blank data into capital_issued
  And I hit the submit check mark
  Then I should get error The Issued Capital 
  And I type asdf data into capital_issued
  And I hit the submit check mark
  Then I should get error The Issued Capital 
  And I type 20 data into capital_issued 
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Paid-up Capital (PHP)
  When I click on capital_details.capital_paid_up data
  And I type blank data into capital_paid_up
  And I hit the submit check mark
  Then I should get error The Paid-up Capital 
  And I type asdf data into capital_paid_up
  And I hit the submit check mark
  Then I should get error The Paid-up Capital 
  And I type 20 data into capital_paid_up 
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Ordinary Shares
  When I click on capital_details.capital_ordinary_shares data
  And I type blank data into capital_ordinary_shares
  And I hit the submit check mark
  Then I should get error The Ordinary Shares field is required
  And I type asdf data into capital_ordinary_shares
  And I hit the submit check mark
  Then I should get error The Ordinary Shares must be a number
  And I type 20 data into capital_ordinary_shares
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Par Value
  When I click on capital_details.capital_par_value data
  And I type blank data into capital_par_value
  And I hit the submit check mark
  Then I should get error The Par Value field is required
  And I type asdf data into capital_par_value
  And I hit the submit check mark
  Then I should get error The Par Value must be a number
  And I type 20 data into capital_par_value 
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Size of Premises (square meters)
  When I click on main_loc.location_size data
  And I type blank data into location_size
  And I hit the submit check mark
  Then I should get error The Size of Premises 
  And I type asdf data into location_size
  And I hit the submit check mark
  Then I should get error The Size of Premises 
  And I type 20 data into location_size 
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Premises Owned / Leased
  When I click on main_loc.location_type data
  And I select blank item from location_type
  And I hit the submit check mark
  Then I should get error The Premises Owned / Leased field is required
  Then I select Owned item from location_type
  And I hit the submit check mark
  
  @Data-test @tessttt
  Scenario: Test Location
  When I click on main_loc.location_map data
  And I select blank item from location_map
  And I hit the submit check mark
  Then I should get error The Location field is required
  Then I select Commercial area item from location_map 
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Premises Used As
  When I click on main_loc.location_used data
  And I select blank item from location_used
  And I hit the submit check mark
  Then I should get error The Premises Used As field is required
  Then I select Sales office item from location_used 
  And I hit the submit check mark
  
    @Data-test
  Scenario: Test Branch	Address
  When I click on branches.branch_address data
  And I type blank data into branch_address
  And I hit the submit check mark
  Then I should get error The Address field is required
  And I type F-89 LA data into branch_address 
  And I hit the submit check mark
  
    @Data-test
  Scenario: Test Branch Owned/ Leased
  When I click on branches.branch_owned_leased data
  And I select blank item from branch_owned_leased
  And I hit the submit check mark
  Then I should get error The Owned/ Leased field is required
  Then I select Owned item from branch_owned_leased 
  And I hit the submit check mark
  
    @Data-test
  Scenario: Test Branch Contact Phone Number
 When I click on branches.branch_phone data
  And I type blank data into branch_phone
  And I hit the submit check mark
  Then I should get error The Phone Number field is required
  And I type 8643662243 data into branch_phone 
  And I hit the submit check mark
  
    @Data-test
  Scenario: Test Branch Contact Email
 When I click on branches.branch_email data
  And I type blank data into branch_email
  And I hit the submit check mark
  Then I should get error The Email field is required 
  And I type asd data into branch_email
  And I hit the submit check mark
  Then I should get error The Email must be a valid email address
  And I type new1223@gmail.com data into branch_email 
  And I hit the submit check mark
  
    @Data-test
  Scenario: Test Branch Contact Person
   When I click on branches.branch_contact_person data
  And I type blank data into branch_contact_person
  And I hit the submit check mark
  Then I should get error The Contact Person field is required
  And I type tester data into branch_contact_person 
  And I hit the submit check mark
  
    @Data-test
  Scenario: Test Branch Job Title
  When I click on branches.branch_job_title data
  And I type blank data into branch_job_title
  And I hit the submit check mark
  Then I should get error The Job Title field is required
  And I type Test data into branch_job_title 
  And I hit the submit check mark
  
     @Data-test
  Scenario: Test Certification details
   When I click on certifications.certification_details data
  And I type blank data into certification_details
  And I hit the submit check mark
  Then I should get error The Certification Details field is required
  And I type Board of Investments data into certification_details 
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Certification Registration No.
   When I click on certifications.certification_reg_no data
  And I type blank data into certification_reg_no
  And I hit the submit check mark
  Then I should get error The Registration No. field is required
  And I type 1212 data into certification_reg_no 
  And I hit the submit check mark
  
  @Data-test
  Scenario: Test Insurance Type
  When I click on insurance.insurance_type data
  And I type blank data into insurance_type
  And I hit the submit check mark
  Then I should get error The Insurance Type field is required
  And I type TYPE 2 data into insurance_type 
  And I hit the submit check mark
  
  @Data-test 
  Scenario: Test Insured Amount
  When I click on insurance.insured_amount data
  And I type blank data into insured_amount
  And I hit the submit check mark
  Then I should get error The Insured Amount field is required
  And I type a data into insured_amount
  And I hit the submit check mark
  Then I should get error The Insured Amount must be a number
  And I type 20000 data into insured_amount 
  And I hit the submit check mark
  
  @Data-test @testingupload
  Scenario: Add Affiliates / Subsidiaries 
  When I click on link Add Affiliates / Subsidiaries
  Then I clicked Save button of table affiliates-list-cntr
  Then I Verify the validatoin on the page for mendatory fileds
  And I enter random Name value at field related_company_name[0]
  And I enter random Text value at field related_company_address1[0]
  And I enter random Text value at field related_company_address2[0]
  And I select Abra item from related_company_province[0]
  And I select Bucay item from related_company_cityid[0]
  And I enter random Text value at field related_company_phone[0]
  And I enter random Email value at field related_company_email[0]
  Then I clicked Save button of table affiliates-list-cntr
  
  @Data-test @testingupload
  Scenario: Delete newly created Affiliates / Subsidiaries
  
  And I delete newly created Affiliate
  And I confirm delete
  
  @Data-test
  Scenario: Upload SEC General Information Sheet file
  When I click on link Upload SEC General Information Sheet
  And I choose DBM PS FS Input Template edited (1).xlsx file of SEC General Information Sheet
  Then I save uplaoded sheet
  
  @Data-test
  Scenario: Upload Utility files
  When I click on link Utility Bills
  And I choose SmartBill.pdf file of Utility Billes1
  And I clicked Save button of table expand-utility-bills-form