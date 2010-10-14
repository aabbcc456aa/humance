require 'spec_helper'

describe SalaryItemsController do

  def mock_salary_item(stubs={})
    @mock_salary_item ||= mock_model(SalaryItem, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all salary_items as @salary_items" do
      SalaryItem.stub(:all) { [mock_salary_item] }
      get :index
      assigns(:salary_items).should eq([mock_salary_item])
    end
  end

  describe "GET show" do
    it "assigns the requested salary_item as @salary_item" do
      SalaryItem.stub(:find).with("37") { mock_salary_item }
      get :show, :id => "37"
      assigns(:salary_item).should be(mock_salary_item)
    end
  end

  describe "GET new" do
    it "assigns a new salary_item as @salary_item" do
      SalaryItem.stub(:new) { mock_salary_item }
      get :new
      assigns(:salary_item).should be(mock_salary_item)
    end
  end

  describe "GET edit" do
    it "assigns the requested salary_item as @salary_item" do
      SalaryItem.stub(:find).with("37") { mock_salary_item }
      get :edit, :id => "37"
      assigns(:salary_item).should be(mock_salary_item)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created salary_item as @salary_item" do
        SalaryItem.stub(:new).with({'these' => 'params'}) { mock_salary_item(:save => true) }
        post :create, :salary_item => {'these' => 'params'}
        assigns(:salary_item).should be(mock_salary_item)
      end

      it "redirects to the created salary_item" do
        SalaryItem.stub(:new) { mock_salary_item(:save => true) }
        post :create, :salary_item => {}
        response.should redirect_to(salary_item_url(mock_salary_item))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved salary_item as @salary_item" do
        SalaryItem.stub(:new).with({'these' => 'params'}) { mock_salary_item(:save => false) }
        post :create, :salary_item => {'these' => 'params'}
        assigns(:salary_item).should be(mock_salary_item)
      end

      it "re-renders the 'new' template" do
        SalaryItem.stub(:new) { mock_salary_item(:save => false) }
        post :create, :salary_item => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested salary_item" do
        SalaryItem.should_receive(:find).with("37") { mock_salary_item }
        mock_salary_item.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :salary_item => {'these' => 'params'}
      end

      it "assigns the requested salary_item as @salary_item" do
        SalaryItem.stub(:find) { mock_salary_item(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:salary_item).should be(mock_salary_item)
      end

      it "redirects to the salary_item" do
        SalaryItem.stub(:find) { mock_salary_item(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(salary_item_url(mock_salary_item))
      end
    end

    describe "with invalid params" do
      it "assigns the salary_item as @salary_item" do
        SalaryItem.stub(:find) { mock_salary_item(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:salary_item).should be(mock_salary_item)
      end

      it "re-renders the 'edit' template" do
        SalaryItem.stub(:find) { mock_salary_item(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested salary_item" do
      SalaryItem.should_receive(:find).with("37") { mock_salary_item }
      mock_salary_item.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the salary_items list" do
      SalaryItem.stub(:find) { mock_salary_item }
      delete :destroy, :id => "1"
      response.should redirect_to(salary_items_url)
    end
  end

end
