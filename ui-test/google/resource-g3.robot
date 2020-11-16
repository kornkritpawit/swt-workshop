*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
พิมพ์ google.com
	Open Browser	${URL}    ${BROWSER}

พิมพ์คำค้น USElection2020
	Input Text    q    ${KEYWORD}
กด Enter
	Press Keys    name:q    RETURN

ตรวจสอบ US Election 2020 - BBC News
	Page Should Contain    ${EXPECTED_RESULT}
    Close Browser

*** Variables ***
${URL}    http://www.google.com
${BROWSER}    chrome
${KEYWORD}     USElection2020
${EXPECTED_RESULT}    US Election 2020 - BBC News