require 'spec_helper'

describe "transactions/new" do
  before(:each) do
    assign(:transaction, stub_model(Transaction,
      :paid => false,
      :amount => 1,
      :currency => "MyString",
      :refunded => false,
      :customer_id => 1
    ).as_new_record)
  end

  it "renders new transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", transactions_path, "post" do
      assert_select "input#transaction_paid[name=?]", "transaction[paid]"
      assert_select "input#transaction_amount[name=?]", "transaction[amount]"
      assert_select "input#transaction_currency[name=?]", "transaction[currency]"
      assert_select "input#transaction_refunded[name=?]", "transaction[refunded]"
      assert_select "input#transaction_customer_id[name=?]", "transaction[customer_id]"
    end
  end
end
