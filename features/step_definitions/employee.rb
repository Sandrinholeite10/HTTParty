Dado('que o usuario consulte informações de fucncionario') do
   @getlist = Employee_Requests.new
end
  
Quando('ele realizar a pesquisa') do
   @list_employee = @getlist.find_employee
end 
  
Então('uma lista de funcionarios deve retornar') do
    expect(@list_employee.code).to eql 200
    expect(@list_employee.message).to eql 'OK'
end

 Dado('que o usuario cadatre um novo funcionario') do        
   @create = Employee_Requests.new
   @assert = Assertions.new
 end
 
 Quando('ele enviar as informações do funcionario') do
    @create_employee = @create.create_employee(@name, @salary, @age) #(DATABSE[:name][:name6], DATABASE[:salary][:salary6], DATABASE[:age][:age6])
    puts @create_employee
 end
 
 Então('esse funcionario sera cadastrado') do
   @assert.request_success(@create_employee.code, @create_employee.message) 
    expect(@create_employee.code).to eql (404)
    expect(@create_employee.msg).to eql 'OK'
    expect(@create_employee["status"]).to eql 'success'
    expect(@create_employee["message"]).to eql 'Successfully! Record has been added.'
    expect(@create_employee.parsed_response['data']["employee_name"]).to eql @name # DATABASE[:name][:name6]
    expect(@create_employee.parsed_response['data']["employee_salary"]).to eql (@salary) # (DATABASE[:salary][:salary6])
    expect(@create_employee.parsed_response['data']["employee_age"]).to eql (@age) # (DATABASE[:age][:age6])
 end

 Dado('que o usuario altere uma informação de funcionario') do
    @request = Employee_Requests.new
 end 
 
 Quando('ele enviar as novas informações') do
   @update_employee = @request.update_employee(@request.find_employee['data'][0]['id'], 'Keila', 1000, 27)
   puts @update_employee
 end
 
 Então('as informações serão alteradas') do
   expect(@update_employee.code).to eql (404)
   expect(@update_employee.msg).to eql 'Not Found'
   expect(@update_employee["status"]).to eql 'nil'
   expect(@update_employee["message"]).to eql 'Successfully! Record has been updated.'
   expect(@update_employee.parsed_response['data']["employee_name"]).to eql 'Keila'
   expect(@update_employee.parsed_response['data']["employee_salary"]).to eql (1000)
   expect(@update_employee.parsed_response['data']["employee_age"]).to eql (27)
 end

 Dado('que o usuario queira deletar um funcionario') do
   @request = Employee_Requests.new
 end
 
 Quando('ele enviar a identificação unica') do
    @delete_employee = @request.delete_employee(@request.find_employee['data'][0]['id'])
 end
 
 Então('esse funcionario sera deletado do sistema') do
   expect(@delete_employee.code).to eql (200)
   expect(@delete_employee.msg).to eql 'OK'
   expect(@delete_employee["status"]).to eql 'success'
   expect(@delete_employee["message"]).to eql 'Successfully! Record has been deleted'
   expect(@delete_employee["data"]).to eql '1'
 end