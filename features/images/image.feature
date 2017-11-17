Feature: Images

  Scenario: Uploading a bingo square
    Given I am logged in as a member of "STJOHNS"
    When I upload the image "red_snake_EOC.jpg"
    Then I should see "Tell us about this image"
