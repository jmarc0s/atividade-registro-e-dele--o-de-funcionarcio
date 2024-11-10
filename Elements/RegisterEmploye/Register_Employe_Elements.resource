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
...   Employee_List_Link_Field=//a[contains(., 'Employee List')]
...   Acive_Dropdown_Button=//button[@type='button' and @class='oxd-icon-button' and @data-v-f5c763eb and @data-v-b4b62742]
...   Search_By_Name_Field=(//input[@data-v-75e744cd and @placeholder='Type for hints...'])[1]
...   Search_Button=//button[@type='submit']
...   Trash_Button=//button[@type='button' and i[contains(@class, 'oxd-icon bi-trash')]]
...   Confirm_Deletion_Button=//button[@type='button' and @class='oxd-button oxd-button--medium oxd-button--label-danger orangehrm-button-margin']