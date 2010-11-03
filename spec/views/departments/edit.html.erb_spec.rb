require 'spec_helper'

describe "departments/edit.html.erb" do
  before(:each) do
    @department = assign(:department, stub_model(Department,
      :new_record? => false,
      :name => "MyString"
    ))
  end

  it "renders the edit department form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => department_path(@department), :method => "post" do
      assert_select "input#department_name", :name => "department[name]"
    end
  end
end
