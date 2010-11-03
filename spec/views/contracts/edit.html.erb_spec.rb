require 'spec_helper'

describe "contracts/edit.html.erb" do
  before(:each) do
    @contract = assign(:contract, stub_model(Contract,
      :new_record? => false,
      :term => 1
    ))
  end

  it "renders the edit contract form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => contract_path(@contract), :method => "post" do
      assert_select "input#contract_term", :name => "contract[term]"
    end
  end
end
