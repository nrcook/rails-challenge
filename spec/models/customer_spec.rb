require 'spec_helper'

describe Customer do
   it "is valid with proper values" do
   	customer = Customer.new first_name: "xxx", last_name: "yyy"
	customer.should be_valid
  end
  
  	it "is not valid without first name" do
  		customer=Customer.new last_name:"ttt"
  		customer.should_not be_valid
  	end
  	
  	it "is not valid without last name" do
  		customer = Customer.new first_name:"ddd"
  		customer.should_not be_valid
  	end	
end
