Feature: As a user I want to be able to search results

  Scenario: Try to search without search phrase
    Given User is on the automationpractice page
    And I click the search button
    Then There is an info: "Please enter a search keyword"

  Scenario: Try to search existing items - 1 item
    Given User is on the automationpractice page
    When I fill the search field in the search form with text: "t-shirt"
    And I click the search button
    Then  "1" items were found

  Scenario: Try to search existing items - @
    Given User is on the automationpractice page
    When I fill the search field in the search form with text: "@"
    And I click the search button
    Then There is an info: "No results were found for your search"

  Scenario: Try to search existing items - @!#$%^&*
    Given User is on the automationpractice page
    When I fill the search field in the search form with text: "@!#$%^&*"
    And I click the search button
    Then There is an info: "No results were found for your search"

  Scenario: Try to search existing items - blouse
    Given User is on the automationpractice page
    When I fill the search field in the search form with text: "blouse"
    And I click the search button
    Then  "1" items were found

  Scenario: Try to search existing items - 5 tems
    Given User is on the automationpractice page
    When I fill the search field in the search form with text: "printed"
    And I click the search button
    Then  "5" items were found

  Scenario: Try to search existing items - 4 items
    Given User is on the automationpractice page
    When I fill the search field in the search form with text: "summer"
    And I click the search button
    Then  "4" items were found

  Scenario: Try to search existing items - whitespaces
    Given User is on the automationpractice page
    When I fill the search field in the search form with text: "           "
    And I click the search button
    Then There is an info: "No results were found for your search"

  Scenario: Try to search existing items - whitespaces and text
    Given User is on the automationpractice page
    When I fill the search field in the search form with text: "   dress   "
    And I click the search button
    Then  "7" items were found

  Scenario: Try to search existing items - 'dress
    Given User is on the automationpractice page
    When I fill the search field in the search form with text: "'dress"
    And I click the search button
    Then  "7" items were found