#Author: lorraine.hall@esure.com
#Keywords Summary :
#Feature: Cucumber Training for Policy Search
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)

Feature: Cucumber Training for Policy Search
  Basic feature test

@ignore
  Scenario: Policy Search
    Given quote is from "GOCO"
    When I search for registration "GU18DX"
    Then the policy search should return policy id
    
  Scenario Outline: Policy Search
    Given quote is from <aggregator>
    When I search for registration = <vrn> and postcode = <postcode> and date of birth = <dob>
    Then the search status should return a policy Id if <expected_status> is Valid      
 
 Examples:
    | aggregator    |vrn         |postcode     |dob         |expected_status|
    | "GOCO"        |"GU158RD"   | "KT9 8SS"   |"20/01/1978"|"Valid"          |
    | "GOCO"        |"WR128SY"   | "E17 1TY"   |"15/11/1956"|"Valid"          |
    | "GOCO"        |"WRX99X"    | "E1  3XX"   |"18/05/1987"|"Invalid "       |
