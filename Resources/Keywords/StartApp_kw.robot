*** Settings ***
Library   AppiumLibrary

*** Keywords ***
Open Application by Devices 
    [Arguments]    ${device_name}    ${platform_version}    ${platform_name}
    Open Application    remote_url=http://localhost:4723/wd/hub     
    ...     deviceName=${device_name}
    ...     platformVersion=${platform_version}
    ...     platformName=Android
    ...     appPackage=com.petpaw.mobile.alpha
    ...     appActivity=com.petpaw.mobile.MainActivity
    ...     noReset=true 

Open Application by Simu
    Open Application    remote_url=http://localhost:4723/wd/hub     
    ...     deviceName=Oreo
    ...     platformVersion=8.0 
    ...     platformName=Android
    ...     appPackage=com.petpaw.mobile.alpha
    ...     appActivity=com.petpaw.mobile.MainActivity
    ...     noReset=true 

#Check Permission
Check popup and accept 1 only use now
    [Arguments]    ${verify_permission_camera}    ${verify_permission_image} 
    ${passed}  Run Keyword And Return Status     Wait Until Element is visible   id=com.android.permissioncontroller:id/grant_dialog        15s  
    IF  ${passed}
            Element Text Should Be              id=com.android.permissioncontroller:id/permission_message                   ${verify_permission_camera}    
            Tap                                 id=com.android.permissioncontroller:id/permission_allow_one_time_button     
            Wait Until Element is visible       id=com.android.permissioncontroller:id/permission_message                   15s
            Element Text Should Be              id=com.android.permissioncontroller:id/permission_message                   ${verify_permission_image}
            Tap                                 id=com.android.permissioncontroller:id/permission_allow_button
    END

# Check popup and accept 1 only use now not set timeout
#     [Arguments]    ${verify_permission_camera}    ${verify_permission_image} 
#     ${passed}  Run Keyword And Return Status     Wait Until Element is visible   id=com.android.permissioncontroller:id/grant_dialog
#     IF  ${passed}    
#             Element Text Should Be              id=com.android.permissioncontroller:id/permission_message                   ${verify_permission_camera}   
#             Tap                                 id=com.android.permissioncontroller:id/permission_allow_one_time_button     
#             Wait Until Element is visible       id=com.android.permissioncontroller:id/permission_message                   
#             Element Text Should Be              id=com.android.permissioncontroller:id/permission_message                   ${verify_permission_image}
#             Tap                                 id=com.android.permissioncontroller:id/permission_allow_button
#     END