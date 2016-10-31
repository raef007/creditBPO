Feature: Test Signup Scenario

  Background:
    Given I am on CreditBPO page
	
	@Signup-test
	Scenario: Verify user redirected to Credit BPO Sign UP page after click on "New Users click here to Sign UP"
	When I click New Users Click Here to Sign Up inputBtn
	Then I should see text CreditBPO Signup Page
	
	@Signup-test
	Scenario: Verify the required fields at Credit BPO sign up page
	When I click New Users Click Here to Sign Up inputBtn
	And I click Register inputBtn
	Then I should get error This field is required
	
	@Signup-test
	Scenario: Verify user able to done registration with fill valid data into all required fields
	When I click New Users Click Here to Sign Up inputBtn
	And I type pilocortes+autotest@gmail.com data into email
	And I type password data into password
	And I type password data into password_confirmation
	And I type First Name data into firstname
	And I type Last Name data into lastname
	And I type JobTitle data into jobtitle
	And I type Automated Test2 data into companyname
	And I type www.mywebsite.com data into website
	And I click Agree checkbox
	And I click Register inputBtn
	And I wait 5 seconds
	Then I should see text CreditBPO Signup Confirmation Page
	
	@Signup-test
	Scenario: Verify user able to done registration with fill invalid email
	When I click New Users Click Here to Sign Up inputBtn
	And I type notanemailaddress data into email
	And I type password data into password
	And I type password data into password_confirmation
	And I wait 5 seconds
	Then I should get error Email address is not valid
	
	@Signup-test
	Scenario: Verify user able to done registration with already used email id
	When I click New Users Click Here to Sign Up inputBtn
	And I type pilocortes+autotest@gmail.com data into email
	And I type password data into password
	And I type password data into password_confirmation
	And I type First Name data into firstname
	And I type Last Name data into lastname
	And I type JobTitle data into jobtitle
	And I type Automated Test2 data into companyname
	And I type www.mywebsite.com data into website
	And I click Agree checkbox
	And I click Register inputBtn
	And I wait 5 seconds
	Then I should get error The Email you are trying to register is already taken
	
	@Signup-test
	Scenario: Verify user able to view and read "End User License Agreement - Terms of Use" 
	When I click New Users Click Here to Sign Up inputBtn
	And I click link End User License Agreement
	Then I should see text End User License Agreement
	
	@Signup-test
	Scenario: Verify user able to done registration with use valid Discount code
	When I click New Users Click Here to Sign Up inputBtn
	And I type pilocortes+autotestdiscount@gmail.com data into email
	And I type password data into password
	And I type password data into password_confirmation
	And I type First Name data into firstname
	And I type Last Name data into lastname
	And I type JobTitle data into jobtitle
	And I type Automated Test2 data into companyname
	And I type www.mywebsite.com data into website
	And I type DISCOUNT data into discount_code
	And I click Agree checkbox
	And I click Register inputBtn
	And I wait 5 seconds
	Then I should see text CreditBPO Signup Confirmation Page
	
	@Signup-test
	Scenario: Verify user able to done registration with use valid SME Key
	When I click New Users Click Here to Sign Up inputBtn
	And I type pilocortes+autotestdiscount@gmail.com data into email
	And I type password data into password
	And I type password data into password_confirmation
	And I type First Name data into firstname
	And I type Last Name data into lastname
	And I type JobTitle data into jobtitle
	And I type Automated Test2 data into companyname
	And I type www.mywebsite.com data into website
	And I type SMEKEY data into serial_key
	And I click Agree checkbox
	And I click Register inputBtn
	And I wait 5 seconds
	Then I should see text CreditBPO Signup Confirmation Page
