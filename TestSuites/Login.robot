*** Settings ***
Library     AppiumLibrary
Resource    ../Resources/imports.robot

*** Test Cases ***
#--variable LANG:("EN" or "TH")

# S_TC-001 Ex. Passed
#     Open Application Samsung
#     Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}  
#     Close Application

# S_TC-002 Ex. Condition Failed
#     Open Application Samsung
#     Check popup and accept 1 only use now not set timeout
#     Close Application

S_TC-001 not verify email Login-Tap broadcast 
    Open Application Samsung
    Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}
    Tap Element Show login                   ${broadcast_btn}
    login                                    ${username_valid}             ${passwd_valid}
    verify login with not verify email
    Close Application

S_TC-002 invalid Login-Tap broadcast 
    Open Application Samsung
    Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}   
    Tap Element Show login                   ${broadcast_btn}
    login                                    ${username_invalid}           ${passwd_invalid}
    verify login fail
    Close Application

S_TC-003 valid Login-Tap broadcast 
    Open Application Samsung
    Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}
    Tap Element Show login                   ${broadcast_btn}
    login                                    ${username_not_verify}        ${passwd_not_verify}
    verify login pass                        ${displayname_valid}
    Close Application

# X_TC-001 Ex. Passed
#     Open Application Xiaomi
#     Check popup and accept 1 only use now
#     Close Application

# X_TC-002 Ex. Failed
#     Open Application Xiaomi
#     Check popup and accept 1 only use now not set timeout
#     Close Application

# x_TC-001 invalid Login-Tap broadcast 
#     Open Application Xiaomi
#     Check popup and accept 1 only use now
#     Tap Element Show login
#     login fail
#     verify login fail
#     Close Application

# x_TC-002 valid Login-Tap broadcast 
#     Open Application Xiaomi
#     Check popup and accept 1 only use now
#     Tap Element Show login
#     login pass
#     verify login pass
#     Close Application

    