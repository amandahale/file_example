# Represent employees as an array
employee1 = ["Majora", "Carter", 80000, true]
employee2 = ["Danilo", "Campos", 70000, true]

puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."
puts "#{employee2[0]} #{employee2[1]} makes #{employee2[2]} a year."

#Represent employess as a hash
employee1 = {"first_name" => "Majora", "last_name" => "Carter", "salary" => 80000, "active" => true}
employee2 = {"first_name" => "Danilo", "last_name" => "Campos", "salary" => 70000, "active" => true}

puts "#{employee1['first_name']} #{employee1['last_name']} makes #{employee1['salary']} a year."

puts "#{employee2['first_name']} #{employee2['last_name']} makes #{employee2['salary']} a year."



#Represent employess as a hash using symbols
employee1 = {first_name: "Majora", last_name: "Carter", salary: 80000, active: true}
employee2 = {first_name: "Danilo", last_name: "Campos", salary: 70000, active: true}

puts "#{employee1[:first_name]} #{employee1[:last_name]} makes #{employee1[:salary]} a year."

puts "#{employee2[:first_name]} #{employee2[:last_name]} makes #{employee2[:salary]} a year."

#Represent an employee as a class instance
class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(last_name: "Campos", first_name: "Danilo", salary: 70000, active: true)
employee1.print_info
employee2.print_info
employee2.give_annual_raise
employee2.print_info
puts employee1.first_name
puts employee1.last_name
puts employee1.active
employee2.active=(false)
puts employee2.active

