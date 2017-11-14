Feature: Organisations

  Scenario: Selecting an organisation
    Given the following organisation exists:
      | name     | code    |
      | St Johns | STJOHNS |
    And I am on the sign up page
    Then the dropdown menu should contain "STJOHNS"
