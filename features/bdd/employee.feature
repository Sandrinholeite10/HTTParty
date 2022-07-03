# language: pt

Funcionalidade: Pesquisar Funcionarios
    Para averiguar informações
    O usuário do sistema 
    Deseja poder consultar informações dos Funcionarios

    @cenario 
    Cenario: Buscar informações de funcionario
       Dado que o usuario consulte informações de fucncionario
       Quando ele realizar a pesquisa
       Então uma lista de funcionarios deve retornar

    @cen_dois
    Cenario: Cadastrar funcionario
       Dado que o usuario cadatre um novo funcionario
       Quando ele enviar as informações do funcionario
       Então esse funcionario sera cadastrado

    @cen_tres
    Cenario: Alterar informações cadastrais
       Dado que o usuario altere uma informação de funcionario
       Quando ele enviar as novas informações
       Então as informações serão alteradas

    @cen_quatro
    Cenario: Deletar cadastro de funcionario
        Dado que o usuario queira deletar um funcionario
        Quando ele enviar a identificação unica
        Então esse funcionario sera deletado do sistema
