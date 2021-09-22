Feature: test scenario to test login for demo site 
Background: 
    Given I am on the demo site login "https://opensource-demo.orangehrmlive.com/" 
    
@tag1 
Scenario Outline: Login logout with different credentials 
    When I enter userName = "<userName>" and password = "<password>" 
    And I click login button 
    Then I should get "<text>" text 
    
    Examples: 
        | userName  | password      | text     |
        | admin     | admin123     | Dashboard|
        | admin     | admin124      | Dashboard|

