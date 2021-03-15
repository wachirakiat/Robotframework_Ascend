*** Settings ***
Resource    Import.robot
Test Setup    Open web seleniumeasy

*** Test Cases ***
Verify age column is sorted order by ascending 
    Activate sorting age order by ASC
    Validate sorting age order by ASC

Verify age column is sorted order by descending
    Activate sorting age order by DESC
    Validate sorting age order by DESC
    
