require 'spec_helper'

describe "drivers/index" do
  before(:each) do
    assign(:drivers, [
      stub_model(Driver,
        :name => "Name"
      ),
      stub_model(Driver,
        :name => "Name"
      )
    ])
  end

  it "renders a list of drivers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
