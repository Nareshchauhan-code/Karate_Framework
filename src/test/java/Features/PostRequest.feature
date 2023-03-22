Feature:Post API
  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read("response.json")
  #Simple Post
  Scenario: Post API Demo 1
    Given url 'https://reqres.in/api/users'
    And request {"name" : "Naresh Chauhan","job":"Software Engineer"}
    When method post
    Then status 201
    And print response

    # With BackGround
  Scenario: Post API Demo 2
    Given path '/users'
    And request {"name" : "Kapil Chauhan","job":"Software Engineer"}
    When method post
    Then status 201
    And print response

  # With BackGround and Assertions
  Scenario: Post API Demo 3
    Given path '/users'
    And request {"name" : "Kapil Chauhan","job":"Software Engineer"}
    When method post
    Then status 201
    #And match response =={"name": "Kapil Chauhan","job": "Software Engineer","id": "199","createdAt": "2022-03-25T10:44:39.946Z"}
    And match response =={"name": "Kapil Chauhan","job": "Software Engineer","id": "#string","createdAt": "#ignore"}
    And print response

    # With BackGround and Assertion with Json File.
  Scenario: Post API Demo 4
    Given path '/users'
    And request {"name" : "Kapil Chauhan","job":"Software Engineer"}
    When method post
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response


   # Read Request from  Json File.
  Scenario: Post API Demo 5
    Given path '/users'
    And def requestBody = read("request.json")
    And request requestBody
    When method post
    Then status 201
    And print response

    # Read Request from  Json File folder.
  Scenario: Post API Demo 6
    Given path '/users'
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And def filepath = projectPath+'src/test/java/data/request.json'
    And print filepath
    And def requestBody = filepath
    And request requestBody
    When method post
    Then status 201
    And print response

     # Read Request from  Json File folder and Set the value.
  Scenario: Post API Demo 7
    Given path '/users'
    And def requestBody = read("request.json")
    And set requestBody.job = 'engineer'
    And request requestBody
    When method post
    Then status 201
    And print response




