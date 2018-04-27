Feature: Organisations
  Scenario: Creating an organisation
    Given I am on the sign up page
    When I sign up with the following credentials:
      | email                 | name                     | password |
      | sara@familybingo.club | St John's Primary School | sarasara |
    Then I should see "Signed in as: sara@familybingo.club"

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
