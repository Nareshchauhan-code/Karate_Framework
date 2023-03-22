Feature: PUT request API Testing
  Scenario: Put Demo 1
    Given url 'https://reqres.in/api/users/2'
    And request {"name": "Naresh Chauhan", "job": "Software Testing" }
    When method PUT
    Then status 200
    And print response