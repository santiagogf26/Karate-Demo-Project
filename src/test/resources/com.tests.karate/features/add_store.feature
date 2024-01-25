Feature: Pet Store Api Test

  Scenario:  add pet to store
    * url urlBase
    * def addNewPet = read('../schemas/AddNewPet.json')
    Given path 'pet'
    And def petName = 'petTest ' + java.util.UUID.randomUUID().toString()
    And addNewPet.name = petName
    And request addNewPet
    When method POST
    Then status 200