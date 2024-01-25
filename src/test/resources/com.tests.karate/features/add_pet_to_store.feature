Feature: Pet Store Api Test

  Background: Set preconditions
    * url urlBase
    * def result = callonce read('../features/add_store.feature')
    * def resultResponse = result.response
    * def petID = resultResponse.id
    * def petNameUpdate = 'pet Update'


  @getPetById
  Scenario: get pet by ID
    Given path 'pet/', petID
    When method GET
    Then status 200

  @updatePet
  Scenario: update pet
    Given path 'pet'
    And resultResponse.name = 'pet Update'
    And resultResponse.status = 'sold'
    And request resultResponse
    When method PUT
    Then status 200
    And match resultResponse.status == 'sold'

  @getPetByStatus
  Scenario: get pet by Status
    Given path 'pet/findByStatus'
    And param status = 'sold'
    When method GET
    Then status 200
    And match response[*].id contains petID
    And match response[*].name contains petNameUpdate









