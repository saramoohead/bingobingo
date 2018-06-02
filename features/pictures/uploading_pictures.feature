# Feature: Pictures
#   Background:
#     Given I am logged in as "sara@bingobingo.com" of "STJOHNS"
#     And I am on the Pictures page
#
#   Scenario: Selecting an image to upload
#     Given I choose the image "red_snake_EOC.jpg" for uploading
#     Then I should see the image "red_snake_EOC.jpg" in the preview
#
#   Scenario: Adding image information
#     Given I have uploaded the following image for "sara@bingobingo.com":
#       | square_image      | name | short_description |
#       | red_snake_EOC.jpg | EOC  | Lucky Red Snake   |
#     And I am on the Pictures page
#     Then I should see the following image details:
#       | name              | EOC               |
#       | short_description | Lucky Red Snake   |
