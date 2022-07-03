class Employee_Requests
   
   def find_employee
      Employee.get('/employees')
   end

   def create_employee(name, salary, age)
      Employee.post('/create', body: {
        "employee_name": name,
        "employee_salary": salary,
        "employee_age": age,
        "profile_image": ""
      }.to_json)
    end 

    def update_employee(id, name, dalary, age)
      Employee.get('/update/' + id.to_s, body: {
        "employee_name": name,
        "employee_salary": dalary,
        "employee_age": age,
        "profile_image": ""
      }.to_json)  
    end 

    def delete_employee(id)
       Employee.delete('/delete/' + id.to_s)
    end
end
