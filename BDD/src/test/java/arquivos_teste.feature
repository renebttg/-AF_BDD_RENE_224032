#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

@tag
Feature: Sistema de Locação de Carros
  Para proporcionar uma experiência de locação excepcional
  Como um cliente
  Eu quero alugar vários tipos de veículos em diferentes situações

  # Cenário: Cliente reserva um carro esportivo com dois dias de antecedência
  @tag1
  Scenario: Cliente reserva um carro esportivo com dois dias de antecedência
    Given que o cliente quer alugar um carro esportivo
    And o cliente faz a reserva com antecedência de dois dias
    When o cliente confirma a reserva
    Then o sistema deve oferecer uma tarifa promocional no valor total da locação
    And o valor original da locação é de R$ 3000,00
    And a tarifa promocional é de 10%
    Then o valor total da locação após a promoção deve ser R$ 2700,00

  # Cenário: Cliente aluga um SUV sem fazer reserva
  @tag3
  Scenario: Cliente aluga um SUV sem fazer reserva
    Given que o cliente quer alugar um SUV
    And o cliente não tem uma reserva feita
    When o cliente solicita a locação do SUV
    Then o sistema deve encontrar um veículo disponível
    And o sistema deve processar a locação rapidamente
    And o custo da locação deve ser um pouco mais alto devido à necessidade imediata
    And o valor original da locação é de R$ 1000,00
    And o aumento de custo devido à urgência é de 25%
    Then o valor total da locação deve ser R$ 1250,00
