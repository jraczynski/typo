Feature: Merge Articles
  As a blog administrator
  In order to avoid multiple similar articles
  I want to be able to merge two articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist
      | id | title    | body        |
      |  2 | Foobar   | LoremIpsum  |
      |  3 | Foobar3  | LoremIpsum3 |

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    Given I am on the edit article page for "Foobar"
    And I fill in "merge_with" with "3"
    And I press "Merge With This Article"
    Then the article "Foobar" should have body "LoremIpsum LoremIpsum3"
    And show me the page