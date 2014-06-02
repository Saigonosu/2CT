require 'spec_helper'

describe "routes/edit" do
  before(:each) do
    @route = assign(:route, stub_model(Route,
      :date => "",
      :trip_num => "",
      :advance => "",
      :reimbursement => "",
      :gross_rev => "",
      :net_rev => 1.5
    ))
  end

  it "renders the edit route form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", route_path(@route), "post" do
      assert_select "input#route_date[name=?]", "route[date]"
      assert_select "input#route_trip_num[name=?]", "route[trip_num]"
      assert_select "input#route_advance[name=?]", "route[advance]"
      assert_select "input#route_reimbursement[name=?]", "route[reimbursement]"
      assert_select "input#route_gross_rev[name=?]", "route[gross_rev]"
      assert_select "input#route_net_rev[name=?]", "route[net_rev]"
    end
  end
end
