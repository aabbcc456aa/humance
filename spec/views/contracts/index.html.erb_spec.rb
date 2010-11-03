require 'spec_helper'

describe "contracts/index.html.erb" do
  before(:each) do
    assign(:contracts, [
      stub_model(Contract,
        :term => 1
      ),
      stub_model(Contract,
        :term => 1
      )
    ])
  end

  it "renders a list of contracts" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
