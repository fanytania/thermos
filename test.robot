*** Settings ***
Documentation     Skrip Pengujian Registrasi untuk https://thermos.com/
Library           SeleniumLibrary

*** Variables ***
${BROWSER}                        chrome
${URL}                            https://thermos.com/
${TIMEOUT}                        10
${WAIT_TIME}                      10s
${LOGIN_BUTTON_XPATH}             //*[@id="SiteHeader"]/div/div/div[5]/div/div/a[2]
${REGISTER_LINK_XPATH}            //*[@id="customer_register_link"]
${FIRST_NAME_XPATH}               //*[@id="FirstName"]
${EMAIL_XPATH}                    //*[@id="Email"]
${PHONE_XPATH}                    //*[@id="Phone"]
${CREATE_PASSWORD_XPATH}          //*[@name="customer[password]"] 
${CONFIRM_PASSWORD_XPATH}         //*[@name="customer[password_confirmation]"]  
${CREATE_ACCOUNT_BUTTON_XPATH}    //*[@id="create_customer"]/div/button  
${FIRST_NAME}                     Fany Tania
${EMAIL}                          testing123@gmail.com
${PHONE}                          081234567890
${CREATE_PASSWORD}                Testing123
${CONFIRM_PASSWORD}               Testing123

*** Test Cases ***
Open Browser, Click Login, and Click Register
    [Documentation]    Membuka browser, mengakses halaman utama Thermos, mengklik tombol login, dan mengklik link register
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Browser Implicit Wait    ${TIMEOUT}
    Wait Until Element Is Visible    ${LOGIN_BUTTON_XPATH}    ${TIMEOUT}
    Click Element    ${LOGIN_BUTTON_XPATH}
    Wait Until Element Is Visible    ${REGISTER_LINK_XPATH}    ${TIMEOUT}
    Click Element    ${REGISTER_LINK_XPATH}
    Wait Until Element Is Visible    ${FIRST_NAME_XPATH}    ${TIMEOUT}
    Input Text    ${FIRST_NAME_XPATH}    ${FIRST_NAME}
    Wait Until Element Is Visible    ${EMAIL_XPATH}    ${TIMEOUT}
    Input Text    ${EMAIL_XPATH}    ${EMAIL}
    Wait Until Element Is Visible    ${PHONE_XPATH}    ${TIMEOUT}
    Input Text    ${PHONE_XPATH}    ${PHONE}
    Wait Until Element Is Visible    ${CREATE_PASSWORD_XPATH}    ${TIMEOUT}
    Input Text    ${CREATE_PASSWORD_XPATH}    ${CREATE_PASSWORD}
    Wait Until Element Is Visible    ${CONFIRM_PASSWORD_XPATH}    ${TIMEOUT}
    Input Text    ${CONFIRM_PASSWORD_XPATH}    ${CONFIRM_PASSWORD}
    Wait Until Element Is Visible    ${CREATE_ACCOUNT_BUTTON_XPATH}    ${TIMEOUT}
    Click Element    ${CREATE_ACCOUNT_BUTTON_XPATH} 
    Sleep    ${WAIT_TIME}
    Close Browser
