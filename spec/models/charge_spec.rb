require 'spec_helper'

describe Charge do
	#let!(:success) { Charge.create(created:129373372,paid:true,amount:5000,currency:"usd",refunded:false,customer_id:1) }
    #let!(:failed) { Charge.create(created:129373372,paid:false,amount:300,currency:"usd",refunded:false,customer_id:3) }
	#let!(:disputed) { Charge.create(created:129373372,paid:false,amount:650,currency:"usd",refunded:true,customer_id:2) }
	
	it "is valid with proper values" do
		charge = Charge.new created:123453221, paid:true, amount:100, currency:'usd', refunded:true, customer_id:1
		charge.should be_valid
	end
	
	#it {should ensure_inclusion_of(:currency).in_array(%w['usd' 'cents']) }
	
	it "success should have success" do
		success = Charge.create(created:129373372,paid:true,amount:5000,currency:"usd",refunded:false,customer_id:1)
		Charge.success.should include(success)
	end
	
	it "failed should have failed" do
		failed = Charge.create(created:129373372,paid:false,amount:300,currency:"usd",refunded:false,customer_id:3)
		Charge.failed.should include(failed)  
	end
	
	
	it "disputed should have disputed" do
		disputed = Charge.create(created:129373372,paid:false,amount:650,currency:"usd",refunded:true,customer_id:2)
		Charge.disputed.should include(disputed)
	end
  	
  	it "should success count equals 10" do
		Charge.success.count.should equal(10)
  	end 
  	it "should failed count equals 5" do
		Charge.failed.count.should equal(5)
  	end 
  	it "should disputed count equals 10" do
		Charge.disputed.count.should equal(5)
  	end 

end
