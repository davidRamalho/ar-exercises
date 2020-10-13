require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: 'Khurram', last_name: 'Virani', hourly_rate: 60)
@store1.employees.create(first_name: 'David', last_name: 'Ramalho', hourly_rate: 80)
@store1.employees.create(first_name: 'Andre', last_name: 'Iskandar', hourly_rate: 50)
@store2.employees.create(first_name: 'Jedi', last_name: 'Master', hourly_rate: 98)
@store2.employees.create(first_name: 'Ice', last_name: 'Frog', hourly_rate: 15)
@store2.employees.create(first_name: 'James', last_name: 'Bond', hourly_rate: 10)
@store2.employees.create(first_name: 'Vanilla', last_name: 'Ice', hourly_rate: 30)