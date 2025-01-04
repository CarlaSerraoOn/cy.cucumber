Feature: Register User
              Eu como cliente
  Quero me cadastrar na aplicação
  Para fazer um pedido de compra

        Background: Access register screen
            Given I am on register screen

        Scenario: Campo nome vazio
             When I click on register
             Then I see the message "O campo nome deve ser prenchido" on register

        Scenario: Campo e-mail vazio
              And I fill nameL
             When I click on register
             Then I see the message "O campo e-mail deve ser prenchido corretamente" on register

        Scenario: Campo e-mail inválido
              And I fill nameL
              And I fill e-mail "invalidEmail"
             When I click on register
             Then I see the message "O campo e-mail deve ser prenchido corretamente" on register

        Scenario: Campo senha vazio
              And I fill nameL
              And I fill e-mail "carla@gmail.com"
             When I click on register
             Then I see the message "O campo senha deve ter pelo menos 6 dígitos" on register

        Scenario: Campo senha inválido
              And I fill nameL
              And I fill e-mail "carla@gmail.com"
              And I fill password "123"
             When I click on register
             Then I see the message "O campo senha deve ter pelo menos 6 dígitos" on register

        Scenario: Cadastro de usuário com sucesso
              And I fill my datas of register
             When I click on register
             Then I see success message on register
