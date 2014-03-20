require 'spec_helper'

describe "transactions/show" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction,
      :paid => false,
      :amount => 1,
      :currency => "Currency",
      :refunded => false,
      :customer_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(/1/)
    rendered.should match(/Currency/)
    rendered.should match(/false/)
    rendered.should match(/2/)
  end
end
