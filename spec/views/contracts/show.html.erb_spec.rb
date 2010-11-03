require 'spec_helper'

describe "contracts/show.html.erb" do
  before(:each) do
    @contract = assign(:contract, stub_model(Contract,
      :term => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
