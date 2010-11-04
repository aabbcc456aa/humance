require "spec_helper"

describe SalariesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/salaries" }.should route_to(:controller => "salaries", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/salaries/new" }.should route_to(:controller => "salaries", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/salaries/1" }.should route_to(:controller => "salaries", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/salaries/1/edit" }.should route_to(:controller => "salaries", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/salaries" }.should route_to(:controller => "salaries", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/salaries/1" }.should route_to(:controller => "salaries", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/salaries/1" }.should route_to(:controller => "salaries", :action => "destroy", :id => "1")
    end

  end
end
