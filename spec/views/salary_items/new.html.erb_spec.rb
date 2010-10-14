require 'spec_helper'

describe "salary_items/new.html.erb" do
  before(:each) do
    assign(:salary_item, stub_model(SalaryItem,
      :code => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new salary_item form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => salary_items_path, :method => "post" do
      assert_select "input#salary_item_code", :name => "salary_item[code]"
      assert_select "input#salary_item_name", :name => "salary_item[name]"
    end
  end
end
