require 'spec_helper'

describe "departments/show.html.erb" do
  before(:each) do
    @department = assign(:department, stub_model(Department,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
