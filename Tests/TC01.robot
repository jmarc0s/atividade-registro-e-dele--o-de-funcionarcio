*** Settings ***
Resource        ../Steps/Main_Steps.robot
Test Setup    I access opensource

*** Test Cases ***

I log in to the system
    Get login data
    I Log in