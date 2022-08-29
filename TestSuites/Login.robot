*** Settings ***
Library            AppiumLibrary
Resource           ../Resources/imports.robot
Test Template

Suite Setup        Run Keywords
...                Open Application by Devices    adb-R58N32LCN9K-pwsTl2._adb-tls-connect._tcp.       12.0        Android        false
...    AND         Check popup and accept while using       ${verify_popup_camera}        ${verify_popup_image}

Test Setup         Run Keyword   
...                Tap Element Show login                   ${broadcast_btn}

Test Teardown      Go Back    

Suite Teardown     Close Application

*** Test Cases ***
#--variable LANG:("EN" or "TH")

#--Suite Setup & Suite Teardown
Login_TC-001 empty Login-Tap broadcast
    Wait Until Element Is Visible            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[3]    30s
    Tap                                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[3]              
    verify login fail                        ${verify_username_empty}      ${verify_passwd_empty}                         

Login_TC_TC-002 invalid Login-Tap broadcast 
    login                                    ${username_invalid}           ${passwd_invalid}
    verify login fail                        ${verify_username_fail}       ${verify_passwd_fail}  

Login_TC_TC-003 not verify email Login-Tap broadcast
    login                                    ${username_not_verify}        ${passwd_not_verify}
    verify login with not verify email       ${wating_verify_email_title}    ${wating_verify_email_subtitle}

Login_TC_TC-004 valid Login-Tap broadcast 
    login                                    ${username_valid}             ${passwd_valid}
    verify login pass                        ${displayname_valid}

