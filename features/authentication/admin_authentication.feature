Feature: Admin authentication
  Scenario: Admin signs up
    Given I am on the sign up page
    When I sign up with the following credentials:
      | email                 | name                     | password |
      | sara@familybingo.club | St John's Primary School | sarasara |
    Then I should see "You are an admin"

  Scenario: Admin signs in
    Given the following admin user exists:
      | email                 | organisation | password |
      | sara@familybingo.club | St John's    | boo800   |
    When I sign in with the following credentials:
      | email                 | password |
      | sara@familybingo.club | boo800   |
    Then I should see "You are an admin"

  Scenario: Admin signs out
    Given I am logged in as "sara@familybingo.club" of "St John's"
    When I sign out
    Then the menu should be exactly: "Home, Sign in, Sign up"
