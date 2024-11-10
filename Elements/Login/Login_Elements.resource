*** Variables ***
&{Login}
#Elementos da página de registro
...   Login_Value=//p[contains(.,'Username')]
...   Password_Value=//p[contains(., 'Password')]
...   Username_Field=//input[@placeholder='Username']
...   Password_Field=//input[@placeholder='Password']
...   Login_Button=//button[@class='oxd-button oxd-button--medium oxd-button--main orangehrm-login-button']