Feature: Home page navigation
  Scenario: New visitor
    Given I visit the home page
    Then the menu should be exactly: "Home, Sign in, Sign up"

  Scenario: Logged in as admin
    Given I am logged in as "sara@familybingo.club" of "St John's"
    When I visit the home page
    Then the menu should be exactly: "Home, Pictures, Boards, Games, Sign out"

  Scenario: Logged in with organisation session
    Given I am logged in with the access code for "St John's"
    When I visit the home page
    Then the menu should be exactly: "Home, Pictures, Sign out"
