Feature: General user
  Scenario: Accessing an organisation's upload area
    Given the following organisation exists:
      | name                     |
      | St John's Primary School |
    And the organisation "St John's Primary School" has the following access codes:
      | 5 | 4 | 3 | 2 | 1 |
    When I visit the "St John's Primary School" organisation page
    Then I do not see the "St John's Primary School" organisation page
    And I enter the following access codes:
      | 5 | 4 | 3 | 2 | 1 |
    Then I see the "St John's Primary School" organisation page

  Scenario: Logging out
    Given I am logged in with the access code for "St John's Primary School"
    When I sign out
    Then the menu should be exactly: "Home, Sign in, Sign up"
