*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Start With Zero Counter

*** Test Cases ***
Reset button sets the counter to zero
    Click  button >> text=Paina
    Get Text  body  *=  nappia painettu 1 kertaa
    Click  button >> text=Nollaa
    Get Text  body  *=  nappia painettu 0 kertaa
