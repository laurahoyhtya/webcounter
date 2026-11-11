*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Start With Zero Counter

*** Test Cases ***
Set value button changes the counter to the entered value
    Fill Text  input[name="value"]  42
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 42 kertaa
