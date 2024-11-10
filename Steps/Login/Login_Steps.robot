*** Settings ***
Resource        ../../Resource/Settings.resource
Resource        ../../Elements/Main_Elements.resource
Library    XML
Library    String

*** Variables ***
${USERNAME_PATTERN}            Username : \
${PASSWORD_PATTERN}            Password : \

*** Keywords ***
I access opensource 
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window


I close opensource 
    Close Browser

Get login data
    Wait Until Element Is Visible    ${Login.Login_Value}    10s
    ${Username_Field}    Get Text    ${Login.Login_Value}
    ${Password_Field}    Get Text    ${Login.Password_Value}

    ${Username_to_login}        Replace String   ${Username_Field}    ${USERNAME_PATTERN}  ${EMPTY}
    ${Password_to_login}        Replace String    ${Password_Field}    ${PASSWORD_PATTERN}  ${EMPTY}


    Set Global Variable     ${Password_to_login}
    Set Global Variable     ${Username_to_login}

I Log in
    Wait Until Element Is Visible    ${Login.Username_Field}    10s
    Input Text    ${Login.Username_Field}    ${Username_to_login} 
    Input Text    ${Login.Password_Field}    ${Password_to_login} 
    Click Element    ${Login.Login_Button}
