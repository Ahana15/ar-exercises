require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

Your code goes here ...
puts "Please give me a store name:"
@store_name = gets.chomp

@store_new = Store.create(name: @store_name,  annual_revenue: 1260000)
puts @store_new.errors.full_messages