require 'spec_helper'

describe "salary_items/edit.html.erb" do
  before(:each) do
    @salary_item = assign(:salary_item, stub_model(SalaryItem,
      :new_record? => false,
      :code => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit salary_item form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => salary_item_path(@salary_item), :method => "post" do
      assert_select "input#salary_item_code", :name => "salary_item[code]"
      assert_select "input#salary_item_name", :name => "salary_item[name]"
    end
  end
end
