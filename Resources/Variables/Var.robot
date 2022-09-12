*** Settings ***
Library   AppiumLibrary

*** Variables *** 
#Permiession
# ${verify_popup_camera}      	Allow PetPaw (Alpha) to take pictures and record video?
# ${verify_popup_image}           Allow PetPaw (Alpha) to access photos and media on your device?

#Login pass
${username_valid}     0830501407
${passwd_valid}       Tt112233

#verify_username
${displayname_valid}  FIATT

#Login fail
${username_invalid}   test123
${passwd_invalid}     test123

#verify_alert_message login fail
# ${verify_username_fail}    Username is incorrect
# ${verify_passwd_fail}      Password is incorrect  
# ${verify_username_empty}   This field is require
# ${verify_passwd_empty}     Password is required

#Not verify
${username_not_verify}   tanakornp@petpaw.com
${passwd_not_verify}     Tt112233

#verify Not verify
# ${wating_verify_email_title}        Your account waiting to verify
# ${wating_verify_email_subtitle}     Please go to your email and verify your account.

#verify logout
# ${verify_logout_text}        Logout
