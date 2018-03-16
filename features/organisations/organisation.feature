Feature: Organisations
  Scenario: Creating an organisation
    Given I am on the sign up page
    When I sign up with the following credentials:
      | email                 | name                     | password |
      | sara@familybingo.club | St John's Primary School | sarasara |
    Then I should see "Signed in as: sara@familybingo.club"

  Scenario: Accessing an organisation's upload area
    Given the following organisation exists:
      | id | name                     |
      | 3  | St John's Primary School |
    And the organisation "St John's Primary School" has the following code:
      | snake, apple, robot, camel, heart |
    When I visit the "St John's Primary School" page
    When I enter the following code:
      | snake, apple, robot, camel, heart |
    Then I see "Bingo with St John's Primary School"
