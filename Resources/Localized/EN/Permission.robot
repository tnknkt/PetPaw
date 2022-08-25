*** Settings ***
Library   AppiumLibrary

*** Variables *** 
${verify_popup_camera}      	Allow PetPaw (Alpha) to take pictures and record video?
${verify_popup_image}           Allow PetPaw (Alpha) to access photos and media on your device?

#verify_alert_message
${verify_username_fail}    Username is incorrect
${verify_passwd_fail}      Password is incorrect  
${verify_username_empty}   This field is require
${verify_passwd_empty}     Password is required