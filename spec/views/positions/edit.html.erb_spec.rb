require 'spec_helper'

describe "positions/edit.html.erb" do
  before(:each) do
    @position = assign(:position, stub_model(Position,
      :new_record? => false,
      :name => "MyString"
    ))
  end

  it "renders the edit position form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => position_path(@position), :method => "post" do
      assert_select "input#position_name", :name => "position[name]"
    end
  end
end
