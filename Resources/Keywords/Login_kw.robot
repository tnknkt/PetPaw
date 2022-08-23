*** Settings ***
Library  AppiumLibrary

*** Keywords ***
# Guest mode 
Tap Element Show login
    [Arguments]    ${check_guestmode}
    Wait Until Element is visible        ${check_guestmode}        30s
    Tap                                  ${check_guestmode}                                        

login
    [Arguments]    ${username}    ${password}
    Wait Until Element is visible        xpath=//*[@text="Sign in"]          30s
    Element Text Should Be               xpath=//*[@text="Sign in"]                Sign in
    Wait Until Element is visible        xpath=//android.widget.EditText[@text="Email / Phone Number / Username"]          30s
    Input Text                           xpath=//android.widget.EditText[@text="Email / Phone Number / Username"]          ${username}
    Wait Until Element is visible        xpath=//android.widget.EditText[@text="Password"]          30s  
    Input Password                       xpath=//android.widget.EditText[@text="Password"]                                 ${password}
    Tap                                  xpath=//*[@text="Sign in"] 
verify login pass
    [Arguments]    ${displayname}
    Wait Until Element Is Visible        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[4]/android.view.ViewGroup/android.widget.ImageView                30s
    Tap                                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[4]/android.view.ViewGroup/android.widget.ImageView
    Wait Until Element is visible        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView[1]        30s
    Element Text Should Be               xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView[1]        ${displayname}
verify login fail
    Wait Until Element is visible        xpath=//*[@text="Username is incorrect"]        30s
    Element Text Should Be               xpath=//*[@text="Username is incorrect"]        Username is incorrect
    Wait Until Element is visible        xpath=//*[@text="Password is incorrect"]        30s
    Element Text Should Be               xpath=//*[@text="Password is incorrect"]        Password is incorrect

verify login with not verify email

    