# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


customer_1 = Customer.create!( first_name: 'Luke', last_name: 'Skywalker' )
customer_2 = Customer.create!( first_name: 'Darth', last_name: 'Vader' )
customer_3 = Customer.create!( first_name: 'Ben', last_name: 'Kenobi' )
customer_4 = Customer.create!( first_name: 'Master', last_name: 'Yoda' )

Transaction.create! ([
  #Succesful transactions
  { paid: true, amount: 1000, currency: 'usd', refunded: false, customer_id: customer_1.id },
  { paid: true, amount: 3000, currency: 'usd', refunded: false, customer_id: customer_1.id },
  { paid: true, amount: 2000, currency: 'usd', refunded: false, customer_id: customer_1.id},
  { paid: true, amount: 1500, currency: 'usd', refunded: false, customer_id: customer_1.id },
  { paid: true, amount: 1000, currency: 'usd', refunded: false, customer_id: customer_1.id },
  { paid: true, amount: 5000, currency: 'usd', refunded: false, customer_id: customer_2.id },
  { paid: true, amount: 10000, currency: 'usd', refunded: false, customer_id: customer_2.id },
  { paid: true, amount: 7000, currency: 'usd', refunded: false, customer_id: customer_2.id },
  { paid: true, amount: 1800, currency: 'usd', refunded: false, customer_id: customer_3.id },
  { paid: true, amount: 1000, currency: 'usd', refunded: false, customer_id: customer_4.id },

  #Failed transactions
  { paid: false, amount: 1000, currency: 'usd', refunded: true, customer_id: customer_3.id },
  { paid: false, amount: 1000, currency: 'usd', refunded: true, customer_id: customer_3.id },
  { paid: false, amount: 1000, currency: 'usd', refunded: true, customer_id: customer_3.id },
  { paid: false, amount: 1000, currency: 'usd', refunded: true, customer_id: customer_4.id },
  { paid: false, amount: 1000, currency: 'usd', refunded: true, customer_id: customer_4.id },

  # Disputed transactions over refund state
  { paid: false, amount: 1000, currency: 'usd', refunded: false, customer_id: customer_1.id },
  { paid: false, amount: 1000, currency: 'usd', refunded: false, customer_id: customer_1.id },
  { paid: false, amount: 1000, currency: 'usd', refunded: false, customer_id: customer_1.id },
  { paid: false, amount: 1000, currency: 'usd', refunded: false, customer_id: customer_2.id },
  { paid: false, amount: 1000, currency: 'usd', refunded: false, customer_id: customer_2.id }
])