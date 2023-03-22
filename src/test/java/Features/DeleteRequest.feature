Feature: Delete Request API
  Scenario: Delete Demo 1
    Given url 'https://reqres.in/api/users/2'
    When method Delete
    Then status 204

