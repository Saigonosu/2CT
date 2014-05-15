require 'spec_helper'

describe "drivers/edit" do
  before(:each) do
    @driver = assign(:driver, stub_model(Driver,
      :name => "MyString"
    ))
  end

  it "renders the edit driver form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", driver_path(@driver), "post" do
      assert_select "input#driver_name[name=?]", "driver[name]"
    end
  end
end
