require 'spec_helper'

describe "routes/index" do
  before(:each) do
    assign(:routes, [
      stub_model(Route,
        :date => "",
        :trip_num => "",
        :advance => "",
        :reimbursement => "",
        :gross_rev => "",
        :net_rev => 1.5
      ),
      stub_model(Route,
        :date => "",
        :trip_num => "",
        :advance => "",
        :reimbursement => "",
        :gross_rev => "",
        :net_rev => 1.5
      )
    ])
  end

  it "renders a list of routes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
