require 'spec_helper'

describe "positions/show.html.erb" do
  before(:each) do
    @position = assign(:position, stub_model(Position,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
