# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Customers
customer1 = Customer.find_or_create_by_id(id: 1, first_name: 'Johny', last_name: 'Flow' )

customer2 = Customer.find_or_create_by_id(id: 2, first_name: 'Raj', last_name: 'Jamnis' )

customer3 = Customer.find_or_create_by_id(id: 3, first_name: 'Andrew', last_name: 'Chung' )

customer4 = Customer.find_or_create_by_id(id: 4, first_name: 'Mike', last_name: 'Smith' )


# Seed successful charges

Transaction.find_or_create_by_id(id: 1, created: 1389618241, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: 1, created: Time.now)
Transaction.find_or_create_by_id(id: 2, created: 1389618241, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: 1, created: Time.now)
Transaction.find_or_create_by_id(id: 3, created: 1389618241, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: 1, created: Time.now)
Transaction.find_or_create_by_id(id: 4, created: 1389618241, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: 1, created: Time.now)
Transaction.find_or_create_by_id(id: 5, created: 1389618241, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: 1, created: Time.now)

Transaction.find_or_create_by_id(id: 6, created: 1389618241, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: 2, created: Time.now)
Transaction.find_or_create_by_id(id: 7, created: 1389618241, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: 2, created: Time.now)
Transaction.find_or_create_by_id(id: 8, created: 1389618241, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: 2, created: Time.now)
Transaction.find_or_create_by_id(id: 9, created: 1389618241, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: 3, created: Time.now)
Transaction.find_or_create_by_id(id: 10, created: 1389618241, paid: true, amount: 5, currency: 'usd', refunded: false, customer_id: 4, created: Time.now)



Transaction.find_or_create_by_id(id: 11, created: 1389618241, paid: false, amount: 3, currency: 'usd', refunded: false, customer_id: 3, created: Time.now)
Transaction.find_or_create_by_id(id: 12, created: 1389618241, paid: false, amount: 1, currency: 'usd', refunded: false, customer_id: 3, created: Time.now)
Transaction.find_or_create_by_id(id: 13, created: 1389618241, paid: false, amount: 1, currency: 'usd', refunded: false, customer_id: 3, created: Time.now)

Transaction.find_or_create_by_id(id: 14, created: 1389618241, paid: false, amount: 3, currency: 'usd', refunded: false, customer_id: 4, created: Time.now)
Transaction.find_or_create_by_id(id: 15, created: 1389618241, paid: false, amount: 1, currency: 'usd', refunded: false, customer_id: 4, created: Time.now)

Transaction.find_or_create_by_id(id: 16, created: 1389618241, paid: true, amount: 3, currency: 'usd', refunded: true, customer_id: 1, created: Time.now)
Transaction.find_or_create_by_id(id: 17, created: 1389618241, paid: true, amount: 2, currency: 'usd', refunded: true, customer_id: 1, created: Time.now)
Transaction.find_or_create_by_id(id: 18, created: 1389618241, paid: true, amount: 2, currency: 'usd', refunded: true, customer_id: 1, created: Time.now)

Transaction.find_or_create_by_id(id: 19, created: 1389618241, paid: true, amount: 3, currency: 'usd', refunded: true, customer_id: 2, created: Time.now)
Transaction.find_or_create_by_id(id: 20, created: 1389618241, paid: true, amount: 2, currency: 'usd', refunded: true, customer_id: 2, created: Time.now)















# # Seed successful charges
# 5.times do
#   tras = Transaction.new
#   tras.customer_id = customer1.id
#   tras.paid = true 
#   tras.refunded = false 
#   tras.save
# end
# 3.times do
#   tras = Transaction.new
#   tras.customer_id = customer2.id
#   tras.paid = true
#   tras.refunded = false   
#   tras.save
# end
# 1.times do
#   tras = Transaction.new
#   tras.customer_id = customer3.id
#   tras.paid = true  
#   tras.refunded = false 
#   tras.save
# end
# 1.times do
#   tras = Transaction.new
#   tras.customer_id = customer4.id
#   tras.paid = true  
#   tras.refunded = false 
#   tras.save
# end

# # Seed failed charges
# 3.times do
#   tras = Transaction.new
#   tras.customer_id = customer3.id
#   tras.paid = false  
#   tras.refunded = false 
#   tras.save
# end
# 2.times do
#   tras = Transaction.new
#   tras.customer_id = customer4.id
#   tras.paid = false  
#   tras.refunded = false 
#   tras.save
# end


# # Seed disputed charges
# 3.times do
#   tras = Transaction.new
#   tras.customer_id = customer1.id
#   tras.paid = true  
#   tras.refunded = true 
#   tras.save
# end
# 2.times do
#   tras = Transaction.new
#   tras.customer_id = customer2.id
#   tras.paid = true  
#   tras.refunded = true
#   tras.save
# end


