Feature: Create Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully create and edit categories
    Given I am on the new category page

    When I fill in "category_name" with "A"
    And I fill in "category_keywords" with "B"
    And I fill in "category_permalink" with "C"
    And I fill in "category_description" with "D"
    And I press "Save"
    #Then I should be on the admin content page
    Then I should see "A"
    Then I should see "B"
    Then I should see "C"
    Then I should see "D"
  
    Then I follow "A"
    
    When I fill in "category_name" with "A1"
    And I fill in "category_keywords" with "B1"
    And I fill in "category_permalink" with "C1"
    And I fill in "category_description" with "D1"
    And I press "Save"
    Then I should see "A1"
    Then I should see "B1"
    Then I should see "C1"
    Then I should see "D1"