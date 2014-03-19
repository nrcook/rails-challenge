require 'spec_helper'

describe "charges/new" do
  before(:each) do
    assign(:charge, stub_model(Charge,
      :id => 1,
      :created_at => 1,
      :paid => false,
      :amount => 1.5,
      :currency => "MyString",
      :refunded => false,
      :customer_id => 1
    ).as_new_record)
  end

  it "renders new charge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", charges_path, "post" do
      assert_select "input#charge_id[name=?]", "charge[id]"
      assert_select "input#charge_created_at[name=?]", "charge[created_at]"
      assert_select "input#charge_paid[name=?]", "charge[paid]"
      assert_select "input#charge_amount[name=?]", "charge[amount]"
      assert_select "input#charge_currency[name=?]", "charge[currency]"
      assert_select "input#charge_refunded[name=?]", "charge[refunded]"
      assert_select "input#charge_customer_id[name=?]", "charge[customer_id]"
    end
  end
end
