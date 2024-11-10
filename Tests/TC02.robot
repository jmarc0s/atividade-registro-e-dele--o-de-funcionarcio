*** Settings ***
Resource        ../Steps/Main_Steps.robot
Test Setup    I access opensource
Test Teardown    I close opensource

*** Test Cases ***
I Register a new Employe
    Given Click on PIM Element
    And I click in add button
    And I fill up all fields including login details fields
    And I upload profile photo
    And I click in save submit button
    And I go back to Employee List
    And I search for the employee I just created
    Then I delete the employee I just created