*** Variables ***
&{Register}
#Elementos da página de registro
...   PIM_Element=//span[contains(., 'PIM')]
...   Add_Button=//button[@class='oxd-button oxd-button--medium oxd-button--secondary']
...   First_Name_Field=//input[@name='firstName']
...   Middle_Name_Field=//input[@name='middleName']
...   Last_Name_Field=//input[@name='lastName']
...   Login_Details_Checkbox=//span[@class='oxd-switch-input oxd-switch-input--active --label-right']
...   Username_Field=(//input[@class='oxd-input oxd-input--active' and @autocomplete='off'])[1]
...   Password_Field=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[4]/div/div[1]/div/div[2]/input
...   Confirm_Password_Field=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[4]/div/div[2]/div/div[2]/input
...   Upload_File_Div=//input[@class='oxd-file-input']
...   Save_Submit_Button=//button[@type='submit']
...   Others_Id_Field=(//input[@class='oxd-input oxd-input--active'])[3]
...   Driver_License_Field=(//input[@class='oxd-input oxd-input--active'])[4]
...   Driver_License_Expire_Date_Field=(//input[@class='oxd-input oxd-input--active' and @placeholder='yyyy-dd-mm'])[1]
...   Nationality_Field=(//div[@class='oxd-select-text oxd-select-text--active'])[1]
...   Date_Of_Birth_Field=(//input[@class='oxd-input oxd-input--active' and @placeholder='yyyy-dd-mm'])[2]