Feature: Employees endpoint
  Background: Employees endpoints should allow to get, create, update and delete employees

  @delete
    Scenario: /delete/{id} should delete an employee
      Given I DELETE a employee with the ID "16"
      Then I verify status code 200 is returned
      And I verify that the employee "16" was deleted

    @getByID
    Scenario: /employee/{id} should return the employee selected
      Given I GET a employee by ID "16"
      Then I verify status code 200 is returned
      And I verify that I obtain the employee 16

    @put1
    Scenario: /update/{id} should update the employee
      Given I PUT a employee by ID "17"
        | Gabo | 7000 | 20 |
      Then I verify status code 200 is returned
      And I verify the following data in the body response
        | Gabo | 7000 | 20 |
  @put2
  Scenario: /update/{id} should update the employee
    Given I PUT a employee by ID "16"
      | Megu | 1000 | 16 |
    Then I verify status code 200 is returned
    And I verify the following data in the body response
      | Megu | 1000 | 16 |



