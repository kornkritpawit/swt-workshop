*** Settings ***
Library    SeleniumLibrary
Resource    resource-facebook.robot

*** Test Cases ***
Test login facebook
    พิมพ์ facebook.com
    พิมพ์ facebook email password
    กด Enter
    พิม Post
    กด Post
*** Keywords ***
พิมพ์ facebook.com
	Open Browser	${URL}    ${BROWSER}
พิมพ์ facebook email password
    Input Text    email    ${EMAIL} 
    Input Text    pass    ${PASSWORD}    
กด Enter
    Press Keys    name:pass    RETURN
    Wait Until Page Contains Element    css:div.oajrlxb2.b3i9ofy5
    Click Element    css:div.oajrlxb2.b3i9ofy5

พิม Post
    Wait Until Page Contains Element    css:div.scb9dxdr.dhix69tm
    Press Keys    None    ${POST}
กด Post
    Click Element    css:div.s1i5eluu

