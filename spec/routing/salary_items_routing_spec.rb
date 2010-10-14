require "spec_helper"

describe SalaryItemsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/salary_items" }.should route_to(:controller => "salary_items", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/salary_items/new" }.should route_to(:controller => "salary_items", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/salary_items/1" }.should route_to(:controller => "salary_items", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/salary_items/1/edit" }.should route_to(:controller => "salary_items", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/salary_items" }.should route_to(:controller => "salary_items", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/salary_items/1" }.should route_to(:controller => "salary_items", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/salary_items/1" }.should route_to(:controller => "salary_items", :action => "destroy", :id => "1")
    end

  end
end
