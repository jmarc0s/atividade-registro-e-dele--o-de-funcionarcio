*** Settings ***
Resource        ../../Resource/Settings.resource
Resource        ../../Elements/Main_Elements.resource
Resource    ../Login/Login_Steps.robot
Library    String

*** Keywords ***
Click on PIM Element
    Get login data
    I Log in
    Wait Until Element Is Visible      ${Register.PIM_Element}
    Click Element                      ${Register.PIM_Element}

I click in add button
    Wait Until Element Is Visible      ${Register.Add_Button}
    Click Element                      ${Register.Add_Button}
    Sleep    1s


I fill up all fields including login details fields
    Wait Until Element Is Visible    ${Register.First_Name_Field}
    Input Text    ${Register.First_Name_Field}        ${FirstName}
    Input Text    ${Register.Middle_Name_Field}       ${MiddleName}
    Input Text    ${Register.Last_Name_Field}         ${LastName}
    Sleep    1s
    Click Element   ${Register.Login_Details_Checkbox}
    Sleep    1s
    Input Text    ${Register.Username_Field}         ${Username}
    Input Text    ${Register.Password_Field}         ${Password}    10s
    Input Text    ${Register.Confirm_Password_Field}         ${Password}
    Sleep    1s


I upload profile photo
    Choose File    ${Register.Upload_File_Div}    ${EXECDIR}//Resource//gato.png
    Sleep    1s

I click in save submit button
    Click Button    ${Register.Save_Submit_Button}
    Sleep    1s

I go back to Employee List
    Wait Until Element Is Visible    ${Register.Employee_List_Link_Field}
    Click Element                    ${Register.Employee_List_Link_Field}
    Sleep    1s

I search for the employee I just created
    Wait Until Element Is Visible    ${Register.Acive_Dropdown_Button}
    ${is_not_visible}=    Run Keyword And Return Status    Element Should Not Be Visible    ${Register.Search_By_Name_Field}
    IF    ${is_not_visible}
        Click Element                    ${Register.Acive_Dropdown_Button}
    END
    Wait Until Element Is Visible    ${Register.Search_By_Name_Field}
    Input Text    ${Register.Search_By_Name_Field}    ${FirstName} ${MiddleName} ${LastName}
    Click Element    ${Register.Search_Button}
    Sleep    1s

I delete the employee I just created
    Scroll Element Into View            ${Register.Trash_Button}
    Wait Until Element Is Visible       ${Register.Trash_Button}
    Click Element                       ${Register.Trash_Button}
    Wait Until Element Is Visible       ${Register.Confirm_Deletion_Button}
    Sleep    3s
    Click Element                       ${Register.Confirm_Deletion_Button}
    Sleep    3s
    