require 'spec_helper'

describe "salary_items/show.html.erb" do
  before(:each) do
    @salary_item = assign(:salary_item, stub_model(SalaryItem,
      :code => "Code",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Code/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
