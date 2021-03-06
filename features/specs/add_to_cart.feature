Feature: Add a product to cart
  As a customer of the website
  I want to add products to my cart
  To proceed to checkout and buy all of them at once

  Background:
    Given that I access the home page

  Scenario Outline:
    And I go to the products '<session>' session
    When I add a product to my cart
    Then I should see the product on my cart
    
  Examples:
    |session |
    |T-Shirts|
    |Dresses |
    |Women   |