## Behavior Driven Development (BDD)
O BDD, ou Desenvolvimento Orientado a Comportamento, é uma abordagem que usa exemplos concretos escritos em linguagem simples para descrever como um sistema deve se comportar. Ele promove a colaboração entre diferentes partes interessadas, como desenvolvedores e analistas de negócios, para garantir que o software atenda às necessidades do cliente.

## Cenário em questão
Imagine que você está planejando alugar um carro para uma viagem. Para facilitar esse processo, uma empresa de locação de carros desenvolveu um sistema com diferentes comportamentos, dependendo das circunstâncias da locação e do cliente.
Inicialmente, considere um cliente que deseja alugar um carro de luxo. Se esse cliente realizar a reserva com antecedência de pelo menos uma semana, o sistema deve oferecer um desconto especial no valor total da locação. Por outro lado, suponha um cliente que necessita alugar um carro utilitário de última hora, sem qualquer reserva prévia. Nesse caso, o sistema deve ainda conseguir encontrar um veículo disponível e processar a locação rapidamente, mesmo que isso implique em um custo um pouco mais elevado devido à demanda urgente.
Esses cenários exemplificam como o sistema de locação de carros responde às diferentes necessidades e condições dos clientes, adaptando-se para garantir uma experiência satisfatória de locação, seja para reservas antecipadas ou demandas de última hora.

## Tecnologias Utilizadas

- **Java**: Linguagem de programação usada para desenvolver a aplicação.
- **Cucumber**: Framework de teste que suporta BDD.
- **Maven**: Ferramenta de automação e gerenciamento de projeto.

## Cenário de Teste
~~~java
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
~~~
## Resultados
### arquivo_teste.feature
![bdd cucumber](https://github.com/renebttg/AF_BDD_RENE_224032/assets/114888521/76bec7ed-2993-4317-888c-13e55ad81a8a)
## Classe Runner
![bdd cucumber runner](https://github.com/renebttg/AF_BDD_RENE_224032/assets/114888521/a30c3b8d-f465-4953-863b-113fec36cfce)

