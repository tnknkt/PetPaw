*** Variables ***
${LANG}    EN
${LANG}    TH

*** Settings ***
Library  AppiumLibrary

#General
Resource    ${CURDIR}/../Resources/Keywords/Login_kw.robot
Resource    ${CURDIR}/../Resources/Keywords/Logout_kw.robot
Resource    ${CURDIR}/../Resources/Keywords/StartApp_kw.robot
Resource    ${CURDIR}/../Resources/Repository/xpath.robot
Resource    ${CURDIR}/../Resources/Variables/dataUser.robot

#Localized
Resource    ${CURDIR}/../Resources/Localized/${LANG}/Permission.robot
Resource    ${CURDIR}/../Resources/Localized/${LANG}/VerifyLogin.robot
Resource    ${CURDIR}/../Resources/Localized/${LANG}/VerifyLogout.robot



