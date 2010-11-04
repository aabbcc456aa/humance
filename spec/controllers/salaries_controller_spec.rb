require 'spec_helper'

describe SalariesController do

  def mock_salary(stubs={})
    (@mock_salary ||= mock_model(Salary).as_null_object).tap do |salary|
      salary.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all salaries as @salaries" do
      Salary.stub(:all) { [mock_salary] }
      get :index
      assigns(:salaries).should eq([mock_salary])
    end
  end

  describe "GET show" do
    it "assigns the requested salary as @salary" do
      Salary.stub(:find).with("37") { mock_salary }
      get :show, :id => "37"
      assigns(:salary).should be(mock_salary)
    end
  end

  describe "GET new" do
    it "assigns a new salary as @salary" do
      Salary.stub(:new) { mock_salary }
      get :new
      assigns(:salary).should be(mock_salary)
    end
  end

  describe "GET edit" do
    it "assigns the requested salary as @salary" do
      Salary.stub(:find).with("37") { mock_salary }
      get :edit, :id => "37"
      assigns(:salary).should be(mock_salary)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created salary as @salary" do
        Salary.stub(:new).with({'these' => 'params'}) { mock_salary(:save => true) }
        post :create, :salary => {'these' => 'params'}
        assigns(:salary).should be(mock_salary)
      end

      it "redirects to the created salary" do
        Salary.stub(:new) { mock_salary(:save => true) }
        post :create, :salary => {}
        response.should redirect_to(salary_url(mock_salary))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved salary as @salary" do
        Salary.stub(:new).with({'these' => 'params'}) { mock_salary(:save => false) }
        post :create, :salary => {'these' => 'params'}
        assigns(:salary).should be(mock_salary)
      end

      it "re-renders the 'new' template" do
        Salary.stub(:new) { mock_salary(:save => false) }
        post :create, :salary => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested salary" do
        Salary.should_receive(:find).with("37") { mock_salary }
        mock_salary.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :salary => {'these' => 'params'}
      end

      it "assigns the requested salary as @salary" do
        Salary.stub(:find) { mock_salary(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:salary).should be(mock_salary)
      end

      it "redirects to the salary" do
        Salary.stub(:find) { mock_salary(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(salary_url(mock_salary))
      end
    end

    describe "with invalid params" do
      it "assigns the salary as @salary" do
        Salary.stub(:find) { mock_salary(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:salary).should be(mock_salary)
      end

      it "re-renders the 'edit' template" do
        Salary.stub(:find) { mock_salary(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested salary" do
      Salary.should_receive(:find).with("37") { mock_salary }
      mock_salary.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the salaries list" do
      Salary.stub(:find) { mock_salary }
      delete :destroy, :id => "1"
      response.should redirect_to(salaries_url)
    end
  end

end
