Feature: Organisations
  Background:


  Scenario: Creating an organisation


  Scenario: Viewing an organisation invitation link
    Given the following organisation exists:
      | id | name                     |
      | 3  | St John's Primary School |
    When I visit invitation link "/join_organisation/3"
    Then I should see "Join the St John's Primary School bingo club"

  Scenario: Joining an organisation via an invitation link
    Given the following organisation exists:
      | id | name                     |
      | 3  | St John's Primary School |
    When I visit invitation link "/join_organisation/3"
    And I sign up with the following credentials:
      | email                 | password |
      | sara@familybingo.club | boo800   |
    Then I should see "All about St John's Primary School bingo club"
