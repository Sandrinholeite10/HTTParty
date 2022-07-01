Dado('que o usuario consulte informações de fucncionario') do
   @get_url = 'http://dummy.restapiexample.com/api/v1/employees'
end
  
Quando('ele realizar a pesquisa') do
   @list_employee = HTTParty.get(@get_url)
end
  
Então('uma lista de funcionarios deve retornar') do
    expect(@list_employee.code).to eql 200
    expect(@list_employee.message).to eql 'OK'
end