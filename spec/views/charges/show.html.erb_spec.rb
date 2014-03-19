require 'spec_helper'

describe "charges/show" do
  before(:each) do
    @charge = assign(:charge, stub_model(Charge,
      :id => 1,
      :created_at => 2,
      :paid => false,
      :amount => 1.5,
      :currency => "Currency",
      :refunded => false,
      :customer_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/false/)
    rendered.should match(/1.5/)
    rendered.should match(/Currency/)
    rendered.should match(/false/)
    rendered.should match(/3/)
  end
end
