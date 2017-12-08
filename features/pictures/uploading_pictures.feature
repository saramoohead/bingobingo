Feature: Pictures
  Background:
    Given I am logged in as a member of "STJOHNS"
    And I am on the Pictures page

  Scenario: Selecting an image to upload
    Given I choose the image "red_snake_EOC.jpg" for uploading
    Then I should see the image "red_snake_EOC.jpg" in the preview

  Scenario: Adding image information
    Given I have chosen the image "red_snake_EOC.jpg" for uploading
    When I fill in the image description form with the following information:
      | name | short_description |
      | EOC  | Lucky Red Snake   |
    And I choose to upload
    Then I should see the following images:
      | image             | name | short_description |
      | red_snake_EOC.jpg | EOC  | Lucky Red Snake   |
