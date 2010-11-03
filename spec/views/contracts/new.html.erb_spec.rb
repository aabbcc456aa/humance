require 'spec_helper'

describe "contracts/new.html.erb" do
  before(:each) do
    assign(:contract, stub_model(Contract,
      :term => 1
    ).as_new_record)
  end

  it "renders new contract form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => contracts_path, :method => "post" do
      assert_select "input#contract_term", :name => "contract[term]"
    end
  end
end
