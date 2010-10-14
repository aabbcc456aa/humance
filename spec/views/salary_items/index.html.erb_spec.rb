require 'spec_helper'

describe "salary_items/index.html.erb" do
  before(:each) do
    assign(:salary_items, [
      stub_model(SalaryItem,
        :code => "Code",
        :name => "Name"
      ),
      stub_model(SalaryItem,
        :code => "Code",
        :name => "Name"
      )
    ])
  end

  it "renders a list of salary_items" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
