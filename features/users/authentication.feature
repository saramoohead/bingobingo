Feature: User authentication

  Scenario: User signs up to existing organisation
    Given I am on the sign up page
    And the following organisation exists:
      | name     | code    |
      | St Johns | STJOHNS |
    When I sign up with the following credentials:
      | email                 | organisation | password |
      | sara@familybingo.club | STJOHNS      | boo800   |
    Then I should see "Signed in as: sara@familybingo.club"

  Scenario: User signs in
    Given the following user exists:
      | email                 | organisation | password |
      | sara@familybingo.club | STJOHNS      | boo800   |
    When I sign in with the following credentials:
      | email                 | password |
      | sara@familybingo.club | boo800   |
    Then I should see "Signed in as: sara@familybingo.club"
