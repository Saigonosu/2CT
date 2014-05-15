require 'spec_helper'

describe "drivers/new" do
  before(:each) do
    assign(:driver, stub_model(Driver,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new driver form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", drivers_path, "post" do
      assert_select "input#driver_name[name=?]", "driver[name]"
    end
  end
end
