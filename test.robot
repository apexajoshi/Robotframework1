*** Settings ***

Library             Browser

*** Variables ***

${URL}            https://google.com/
${MAIN_TITLE}     Scraping Sandbox
${BOOKS_TITLE}    All products | Books to Scrape - Sandbox
${clickkontextarea}  //input[@type ='text']
${typletext}   hello
*** Keywords ***
Open Webpage
    open browser  ${URL}}
Click Keyword
    click   ${clickkontextarea}
Fill Keyword
    fill text   ${typletext}


#*** Tasks ***
#
#Playwright: Open a browser in headless mode
#    New Page    https://robotsparebinindustries.com
*** Test Cases ***
Playwright: Open a browser in GUI mode
    #Browser.Open Browser
    #New Page    https://robotsparebinindustries.com
    #New Page  https://www.google.com/
    #Type Text    input#username    maria


#Playwright: Open a browser in GUI mode
     Browser.Open Browser
     New Page    https://www.google.com/
     Get Title    ==    Google
     Get Title    validate    value == "Google"
     Get Url    ==     https://www.google.com/



#*** Test Cases ***
#Open Browser Page
#    open webpage
#    Click Keyword
#    Fill Keyword
#Click Into Books
#    Click          body > div > div:nth-child(2) > div.col-md-10 > p > a:nth-child(1)
#    Get Title      ==    ${BOOKS_TITLE}  🎭 Playwright