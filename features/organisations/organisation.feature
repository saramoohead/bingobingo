Feature: Organisations
  Scenario: Creating an organisation
    Given I am on the sign up page
    When I sign up with the following credentials:
      | email                 | name                     | password |
      | sara@familybingo.club | St John's Primary School | sarasara |
    Then I should see "Signed in as: sara@familybingo.club"

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
