*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Reset button sets the counter to zero
    Go To  ${HOME_URL}
    Click  button >> text=Nollaa
    Click  button >> text=Paina
    Get Text  body  *=  nappia painettu 1 kertaa
    Click  button >> text=Nollaa
    Get Text  body  *=  nappia painettu 0 kertaa
