require 'spec_helper'

describe "routes/show" do
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

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1.5/)
  end
end
