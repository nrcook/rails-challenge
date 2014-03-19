# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

customers = [
  ['Luke', 'Skywalker'],
  ['Darth', 'Vader'],
  ['Ben', 'Kenobi'],
  ['Master', 'Yoda']
 ]
 
 customers.each do |first, last|
 	Customer.create(first_name:first, last_name:last)
 end 

 Charge.create(created:129373372,paid:true,amount:5000,currency:"usd",refunded:false,customer_id:1)
 Charge.create(created:129373373,paid:true,amount:6000,currency:"usd",refunded:false,customer_id:1)
 Charge.create(created:129373374,paid:true,amount:3000,currency:"usd",refunded:false,customer_id:1)
 Charge.create(created:129373375, paid:true,amount:1000,currency:"usd",refunded:false,customer_id:1)
 Charge.create(created:129373376, paid:true,amount:7000,currency:"cents",refunded:false,customer_id:1)
 
 Charge.create(created:129373372,paid:true,amount:1000,currency:"usd",refunded:false,customer_id:2)
 Charge.create(created:129373372,paid:true,amount:3000,currency:"usd",refunded:false,customer_id:2)
 Charge.create(created:129373372,paid:true,amount:2000,currency:"usd",refunded:false,customer_id:2)
 
 Charge.create(created:129373372,paid:true,amount:2000,currency:"cents",refunded:false,customer_id:3)
  Charge.create(created:129373372,paid:true,amount:700,currency:"cents",refunded:false,customer_id:4)
 
 
 Charge.create(created:129373372,paid:false,amount:300,currency:"usd",refunded:false,customer_id:3)
 Charge.create(created:129373372,paid:false,amount:400,currency:"usd",refunded:false,customer_id:3)
 Charge.create(created:129373372,paid:false,amount:50,currency:"usd",refunded:false,customer_id:3)
 
 Charge.create(created:129373372,paid:false,amount:10,currency:"usd",refunded:false,customer_id:4)
 Charge.create(created:129373372,paid:false,amount:50,currency:"usd",refunded:false,customer_id:4)
 
 Charge.create(created:129373372,paid:false,amount:90,currency:"usd",refunded:true,customer_id:1)
 Charge.create(created:129373372,paid:false,amount:500,currency:"usd",refunded:true,customer_id:1)
 Charge.create(created:129373372,paid:false,amount:650,currency:"usd",refunded:true,customer_id:1)
 
 Charge.create(created:129373372,paid:false,amount:650,currency:"usd",refunded:true,customer_id:2)
 Charge.create(created:129373372,paid:false,amount:650,currency:"usd",refunded:true,customer_id:2)
 
 
 
 