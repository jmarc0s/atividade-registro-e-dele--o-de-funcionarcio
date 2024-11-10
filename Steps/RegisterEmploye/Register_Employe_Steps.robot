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

I fill up all other fields
    Wait Until Element Is Visible    ${Register.Others_Id_Field}  10S
    Sleep    10s
    Input Text    ${Register.Others_Id_Field}    ${OtherId}
    Sleep    1s
    Input Text    ${Register.Driver_License_Field}    ${DriversLicenseNumber}
    Sleep    1s
    Wait Until Element Is Visible    ${Register.Driver_License_Expire_Date_Field}  10S
    Sleep    1s
    Input Text    ${Register.Driver_License_Expire_Date_Field}    ${DriverLicenseExpireDate}
    Scroll Element Into View    ${Register.Date_Of_Birth_Field}
    Input Text    ${Register.Date_Of_Birth_Field}    ${DateOfBirth}
    Click Element    ${Register.Nationality_Field}
    Sleep    1s

    FOR    ${i}    IN RANGE  4
        Press Key     ${Register.Nationality_Field}    ARROW_DOWN
    END

    Press Key     ${Register.Nationality_Field}    ENTER
    