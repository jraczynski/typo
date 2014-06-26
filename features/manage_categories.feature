Feature: Manage Categories
  As a blog administrator
  In order to categorize articles
  I want to be able to add and rename article categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Given the following categories exist:
  | name   | permalink  | id |
  | Amazon | amazon     | 1  |

  Scenario: Successfully add categories
    Given I am on the new categories page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_permalink" with "foobar"
    And I press "Save"
    Then I should be on the new categories page
    And I should see "Foobar"
    And I should see "foobar"

  Scenario: Successfully edit categories
    Given I am on the new categories page
    When I follow "Edit"
    Then I should be on the edit category page for "Amazon"
    When I fill in "category_name" with "Peru"
    And I fill in "category_permalink" with "peru"
    And I press "Save"
    Then I should be on the new categories page
    And I should see "Peru"
    And I should see "peru"
    And I should not see "Amazon"
    And I should not see "amazon"