Feature: User authentication
  Scenario: User signs in
    Given the following user exists:
      | email                 | organisation | password |
      | sara@familybingo.club | St John's    | boo800   |
    When I sign in with the following credentials:
      | email                 | password |
      | sara@familybingo.club | boo800   |
    Then I should see "Signed in as: sara@familybingo.club"

  Scenario: User signs out
    Given I am logged in as "sara@familybingo.club" of "St John's":
    When I sign out
    Then I should see "Sign in"
