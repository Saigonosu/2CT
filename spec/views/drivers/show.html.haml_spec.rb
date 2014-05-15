require 'spec_helper'

describe "drivers/show" do
  before(:each) do
    @driver = assign(:driver, stub_model(Driver,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
