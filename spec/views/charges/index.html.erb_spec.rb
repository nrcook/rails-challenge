require 'spec_helper'

describe "charges/index" do
  before(:each) do
    assign(:charges, [
      stub_model(Charge,
        :id => 1,
        :created_at => 2,
        :paid => false,
        :amount => 1.5,
        :currency => "Currency",
        :refunded => false,
        :customer_id => 3
      ),
      stub_model(Charge,
        :id => 1,
        :created_at => 2,
        :paid => false,
        :amount => 1.5,
        :currency => "Currency",
        :refunded => false,
        :customer_id => 3
      )
    ])
  end

  it "renders a list of charges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Currency".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
