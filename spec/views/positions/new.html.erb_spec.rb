require 'spec_helper'

describe "positions/new.html.erb" do
  before(:each) do
    assign(:position, stub_model(Position,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new position form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => positions_path, :method => "post" do
      assert_select "input#position_name", :name => "position[name]"
    end
  end
end
