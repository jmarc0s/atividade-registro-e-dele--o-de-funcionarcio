*** Settings ***
Resource        ../../Resource/Settings.resource
Resource        ../../Elements/Main_Elements.resource
Library    XML
Library    String

*** Variables ***
${username_to_login}           NONE
${password_to_login}           NONE
${USERNAME_PATTERN}            Username : 
${PASSWORD_PATTERN}            Password : 

*** Keywords ***
I access opensource 
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window


Get login data
     ${elements}    Get WebElements    ${Login.Login_And_Password_Values}

    FOR    ${element}    IN    @{elements}
        ${text}=    Get Text    ${element}
        
        ${name_result}    Should Start With ${text} ${USERNAME_PATTERN} 
        ${password_result}     starts with ${text} ${PASSWORD_PATTERN} 
        # Verificar se o texto contém o padrão de username
        IF  ${name_result}
            ${username_to_login}             Replace String  ${text}    ${USERNAME_PATTERN}    ''
            Log To Console    ${username_to_login}
        ELSE IF ${password_result}   
            ${password_to_login}             Replace String  ${text}    ${PASSWORD_PATTERN}    ''
        ELSE
            Log To Console    something went wrong. Could'd get login data
        END
    END
    

I Log in
    Wait Until Element Is Visible    ${Login.Username_Field}
    Input Text    ${Login.Username_Field}    ${username_to_login}
    Input Text    ${Login.Password_Field}    ${password_to_login}
    Sleep    10s
    Click Element    ${Login.Login_Button}
