require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Jon", last_name: "Mil", hourly_rate: 60)
@store1.employees.create(first_name: "Anna", last_name: "Ghost", hourly_rate: 100)
@store1.employees.create(first_name: "Cin", last_name: "Hal", hourly_rate: 101)
@store2.employees.create(first_name: "Nik", last_name: "Sher", hourly_rate: 102)
@store2.employees.create(first_name: "Cam", last_name: "Dun", hourly_rate: 103)
@store2.employees.create(first_name: "Aaron", last_name: "Tag", hourly_rate: 104)

puts @store1.employees