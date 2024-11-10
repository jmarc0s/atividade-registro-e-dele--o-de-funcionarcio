*** Settings ***
Library  SeleniumLibrary


*** Variables ***
#Dados gerais
${URL}                      https://opensource-demo.orangehrmlive.com/
${Browser}                  chrome


#Dados do teste
${FirstName}                     Edward
${MiddleName}                    Sheeran
${LastName}                      Silva
${Username}                      teste@gmail.com
${Password}                      123456abc
${OtherId}                       123456
${DriversLicenseNumber}          87654321
${DriverLicenseExpireDate}       2026-06-11
${DateOfBirth}                   2000-06-11
${ProfilePhoto}                  ${EXECDIR}//Resource//gato.png