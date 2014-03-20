require 'spec_helper'

describe "transactions/index" do
  before(:each) do

    @customer = Customer.create(
               first_name: 'Bruce',
               last_name: 'Wayne'
    )

    assign(:successful_transactions, [
      stub_model(Transaction,
        :paid => true,
        :amount => 1,
        :currency => "USD",
        :refunded => false,
        :customer_id => @customer.id
      ),
      stub_model(Transaction,
        :paid => true,
        :amount => 1,
        :currency => "USD",
        :refunded => false,
        :customer_id => @customer.id
      )
    ])

    assign(:failed_transactions, [
      stub_model(Transaction,
                 :paid => false,
                 :amount => 2,
                 :currency => "USD",
                 :refunded => true,
                 :customer_id => @customer.id
      ),
      stub_model(Transaction,
                 :paid => false,
                 :amount => 2,
                 :currency => "USD",
                 :refunded => true,
                 :customer_id => @customer.id
      )
    ])

    assign(:disputed_transactions, [
      stub_model(Transaction,
                 :paid => false,
                 :amount => 3,
                 :currency => "USD",
                 :refunded => false,
                 :customer_id => @customer.id
      ),
      stub_model(Transaction,
                 :paid => false,
                 :amount => 3,
                 :currency => "USD",
                 :refunded => false,
                 :customer_id => @customer.id
      )
    ])
  end

  it "renders a list of succesful, failed & disputed transactions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 'Bruce Wayne', :count => 6
  end
end
