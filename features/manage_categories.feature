Feature: Manage Categories
  As a blog administrator
  In order to categorize articles
  I want to be able to add and rename article categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  #Given the following categories exist:
  #| title     | permalink  |
  #| Amazon    | amazon     |

  Scenario: Successfully add categories
    When I follow "Categories"
    Then I should be on the new categories page
    #Given I am on the admin categories page
    #When I fill in "category_name" with "Foobar"
    #And I fill in "category_permalink" with "foobar"
    #And I press "Save"
    #Then I should be on the categories page
    #And I should see "Foobar"
    #And I should see "foobar"

  #Scenario: Successfully edit categories
  #  Given I am on the categories page
  #  When I follow "Edit"
  #  Then I should be on the categories page