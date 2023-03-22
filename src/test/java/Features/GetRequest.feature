Feature:Get API
  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

 #Simple Get Request
  Scenario:Sample API Demo 1
    Given url  'https://reqres.in/api/users?page=2'
    When method Get
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  # Background get Request
  Scenario:Sample API Demo 2
    Given path '/users/2'
    When method Get
    Then status 200
    And print response
    And print responseStatus

  # Background get Request with Path and Parameters
  Scenario:Sample API Demo 3
    Given path '/users'
    And param page = 2
    When method Get
    Then status 200
    And print response
    And print responseStatus

  # Background get Request with Path and Parameters and Assertions
  Scenario:Sample API Demo 4
    Given path '/users'
    And param page = 2
    When method Get
    Then status 200
    And print response
    And print responseStatus
    And match response.data[0].first_name != null
    And assert response.data.length == 6
    And match response.data[3].id == 10
    And match response $.data[4].id == 11






