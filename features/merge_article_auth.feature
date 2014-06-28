Feature: Merge Articles - Authentication
  As a non-administrator
  In order to don't break something
  I should not be able to merge two articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel as a non-admin
    And the following articles created by "contributor" exist
      | id | title    | body        |
      |  2 | Foobar   | LoremIpsum  |
      |  3 | Foobar3  | LoremIpsum3 |

  Scenario: A non-admin cannot merge two articles
    Given I am on the edit article page for "Foobar"
    Then I should not see "Merge With This Article"
    And I should see "Publish settings"
    And show me the page

    #Scenario: Admin should see button? Or is it implied by other feature test