*** Settings ***
Library  SeleniumLibrary 


Suite Setup    Log    I am inside Suite Setup    
Suite Teardown  Log    I am inside Suite Teardown   
     
Test Setup    Log    I am inside Test Setup   
Test Teardown    Log    I am inside Test Teardown   

Default Tags    Sanity
*** Test Cases ***

MyFristTest
    [Tags]    smoke
    Log    HELLO WORLD...
    
MysecondTest
     [Tags]    regression1
    Log    I am in my 2nd Test
    
    
MythirdTest
    Log    I am in my 3rd Test
    
MyfourthTest
    Log    I am in my 4th Test
# FirstSeleniumTest
     # Open Browser     https://google.com     chrome
     # Set Browser Implicit Wait    5
     # Input Text     name=q   Automation step by step
     # Press Keys     name=q   ENTER
     # # Click Button     name=btnK    
     # Sleep    2s        
     # Close Browser
     # Log    Test Completed
     
# Login to SaaS IMS   
    # Open Browser     ${URL}     chrome
     # Set Browser Implicit Wait    5
     # Input Text      xpath://input[@type='text']      @{CREDENTIALS}[0]
     # Input Password  xpath://input[@type='password']  &{LOGINDATA}[PASSWORD]
     # Click Button    xpath://input[@type='button']
     # Click Element    id:top-user-menu-button
     # Click Element   link:Log Off      
     # Close Browser
     # Log    Test Completed
     # Log    This test was executed by %{username} on %{os}   
     

# Login to SaaS IMS by KeyWord   
    # Open Browser     ${URL}     chrome
     # Set Browser Implicit Wait    5
     # LoginKW
     # Click Element    id:top-user-menu-button
     # Click Element   link:Log Off      
     # Close Browser
     # Log    Test Completed
     # Log    This test was executed by %{username} on %{os}  
      
*** Variables ***
${URL}  https://build.rbassetsolutions.com/ims
@{CREDENTIALS}   rbassaasadmin   mascus@123
&{LOGINDATA}    USERNAME=rbassaasadmin    PASSWORD=mascus@123

*** Keywords ***
LoginKW
    Input Text      xpath://input[@type='text']      @{CREDENTIALS}[0]
     Input Password  xpath://input[@type='password']  &{LOGINDATA}[PASSWORD]
     Click Button    xpath://input[@type='button']
     

