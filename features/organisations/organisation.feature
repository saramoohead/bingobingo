Feature: Organisations

  Scenario: Selecting an organisation
    Given I am on the sign up page
    And the following organisation exists:
      | name     | code    |
      | St Johns | STJOHNS |
    Then the dropdown menu should contain "STJOHNS"
