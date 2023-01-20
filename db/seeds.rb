Employee.destroy_all
Manager.destroy_all

managers = (1..20).map do
  Manager.create!(
    name: "manager"
  )
end

employee = (1..50).map do
  Employee.create!(
    name: "employee",
    email: "emp@gmail.com",
    dob: "17-01-1988",
    mobile: "8879544321",
    designation: "Senior Developer",
    salary: 35_000,
    manager: managers.sample
  )
end
