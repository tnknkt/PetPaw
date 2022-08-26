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

# S_TC-001 empty Login-Tap broadcast
#     Open Application by Devices              5c02860       10.0        Android
#     Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}   
#     Tap Element Show login                   ${broadcast_btn}
#     Wait Until Element Is Visible            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[3]    30s
#     Tap                                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[3]              
#     verify login fail                        ${verify_username_empty}      ${verify_passwd_empty}                         
#     Close Application

# S_TC-002 invalid Login-Tap broadcast 
#     Open Application by Devices              5c02860       10.0        Android 
#     Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}   
#     Tap Element Show login                   ${broadcast_btn}
#     login                                    ${username_invalid}           ${passwd_invalid}
#     verify login fail                        ${verify_username_fail}       ${verify_passwd_fail}  
#     Close Application

# S_TC-003 not verify email Login-Tap broadcast
#     Open Application by Devices              5c02860       10.0        Android 
#     Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}
#     Tap Element Show login                   ${broadcast_btn}
#     login                                    ${username_not_verify}        ${passwd_not_verify}
#     verify login with not verify email
#     Close Application

# S_TC-004 valid Login-Tap broadcast 
#     Open Application by Devices              5c02860       10.0        Android 
#     Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}
#     Tap Element Show login                   ${broadcast_btn}
#     login                                    ${username_valid}             ${passwd_valid}
#     verify login pass                        ${displayname_valid}
#     Close Application

# S_TC-005 Logout
#     Open Application by Devices              5c02860       10.0        Android 
#     Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}
#     log out
#     verify logout 
#     Close Application

#------------------------------------------------------------

# S_TC-001 empty Login-Tap broadcast
#     Open Application by Simu
#     Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}   
#     Tap Element Show login                   ${broadcast_btn}
#     Wait Until Element Is Visible            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[3]    30s
#     Tap                                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[3]              
#     verify login fail                        ${verify_username_empty}      ${verify_passwd_empty}                         
#     Close Application

# S_TC-002 invalid Login-Tap broadcast 
#     Open Application by Simu
#     Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}   
#     Tap Element Show login                   ${broadcast_btn}
#     login                                    ${username_invalid}           ${passwd_invalid}
#     verify login fail                        ${verify_username_fail}       ${verify_passwd_fail}  
#     Close Application

# S_TC-003 not verify email Login-Tap broadcast
#     Open Application by Simu
#     Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}
#     Tap Element Show login                   ${broadcast_btn}
#     login                                    ${username_not_verify}        ${passwd_not_verify}
#     verify login with not verify email
#     Close Application

# S_TC-004 valid Login-Tap broadcast 
#     Open Application by Simu
#     Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}
#     Tap Element Show login                   ${broadcast_btn}
#     login                                    ${username_valid}             ${passwd_valid}
#     verify login pass                        ${displayname_valid}
#     Close Application

# S_TC-005 Logout
#     Open Application by Simu
#     Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}
#     log out
#     verify logout 
#     Close Application

#------------------------------------------------------------

S_TC-001 empty Login-Tap broadcast
    Open Application by Devices              adb-R58N32LCN9K-pwsTl2._adb-tls-connect._tcp.       12.0        Android
    Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}   
    Tap Element Show login                   ${broadcast_btn}
    Wait Until Element Is Visible            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[3]    30s
    Tap                                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[3]              
    verify login fail                        ${verify_username_empty}      ${verify_passwd_empty}                         
    Close Application

S_TC-002 invalid Login-Tap broadcast 
    Open Application by Devices              adb-R58N32LCN9K-pwsTl2._adb-tls-connect._tcp.       12.0        Android 
    Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}   
    Tap Element Show login                   ${broadcast_btn}
    login                                    ${username_invalid}           ${passwd_invalid}
    verify login fail                        ${verify_username_fail}       ${verify_passwd_fail}  
    Close Application

S_TC-003 not verify email Login-Tap broadcast
    Open Application by Devices              adb-R58N32LCN9K-pwsTl2._adb-tls-connect._tcp.       12.0        Android 
    Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}
    Tap Element Show login                   ${broadcast_btn}
    login                                    ${username_not_verify}        ${passwd_not_verify}
    verify login with not verify email
    Close Application

S_TC-004 valid Login-Tap broadcast 
    Open Application by Devices              adb-R58N32LCN9K-pwsTl2._adb-tls-connect._tcp.       12.0        Android 
    Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}
    Tap Element Show login                   ${broadcast_btn}
    login                                    ${username_valid}             ${passwd_valid}
    verify login pass                        ${displayname_valid}
    Close Application

S_TC-005 Logout
    Open Application by Devices              adb-R58N32LCN9K-pwsTl2._adb-tls-connect._tcp.       12.0        Android 
    Check popup and accept 1 only use now    ${verify_popup_camera}        ${verify_popup_image}
    log out
    verify logout 
    Close Application