*** Settings ***
Library  SeleniumLibrary    

Suite Setup    Log    I am inside a Test Suite Setup   
Suite Teardown    Log    I am inside a Test Suite Teardown    
Test Setup    Log    I am inside a Test Setup
Test Teardown    Log    I am inside a Test Teardown      


*** Test Cases ***
MyFirstTest
   Log    Hello World...    
   
FirstSeleniumTest
    Open Browser    https://www.google.com/  gc 
    Set Browser Implicit Wait    5 
    Input Text    name=q    Automation step by step 
    Press Keys    name=q  ENTER
    #Click Button    name=btnK   
    Sleep    2    
    Close Browser
    Log    TestCompleted    
    
#SecondSeleniunTest
  # Open Browser    http://automationpractice.com/index.php  gc 
  #  Set Browser Implicit Wait    5 
  # Input Text    name=search_query    shirt 
  #Click Button    name=submit_search
    #Wait Until Element Is Visible   xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img 
    #Set Browser Implicit Wait  10
    #Close Browser 
    
#ThirdSeleniunTest
  # Open Browser    https://www.mercadolibre.com.mx/  gc 
  #  Set Browser Implicit Wait    5 
   # Input Text    xpath=/html/body/header/div/form/input    cuchillo de rambo 
    #Click Button    name=submit_search
   # Press Keys    xpath=/html/body/header/div/form/button   ENTER
    #Press Keys    xpath=/html/body/header/div/form/input RETURN
    #Wait Until Element Is Visible   xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img 
    #Set Browser Implicit Wait  5
    #Close Browser 
    
SampleLoginTest
    [Documentation]   This is a sample login test
    Open Browser      ${URL}    gc
    Set Browser Implicit Wait    5
    LoginKW
    Click Element     id=welcome
	Click Element     link=Logout    
	Close Browser
    #Click Element    xpath=//*[@id="welcome-menu"]/ul/li[2]/a
    Log               Test Completed    
    

*** Variables ***
${URL}   https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}      username=Admin   password=admin123

*** Keywords ***
LoginKW
    Input Text        id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LOGINDATA}[password]
    Click Button      id=btnLogin    
    
MyFourthTest
    
  Log    I am inside 4th test    
  