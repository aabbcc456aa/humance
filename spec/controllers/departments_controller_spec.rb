require 'spec_helper'

describe DepartmentsController do

  def mock_department(stubs={})
    (@mock_department ||= mock_model(Department).as_null_object).tap do |department|
      department.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all departments as @departments" do
      Department.stub(:all) { [mock_department] }
      get :index
      assigns(:departments).should eq([mock_department])
    end
  end

  describe "GET show" do
    it "assigns the requested department as @department" do
      Department.stub(:find).with("37") { mock_department }
      get :show, :id => "37"
      assigns(:department).should be(mock_department)
    end
  end

  describe "GET new" do
    it "assigns a new department as @department" do
      Department.stub(:new) { mock_department }
      get :new
      assigns(:department).should be(mock_department)
    end
  end

  describe "GET edit" do
    it "assigns the requested department as @department" do
      Department.stub(:find).with("37") { mock_department }
      get :edit, :id => "37"
      assigns(:department).should be(mock_department)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created department as @department" do
        Department.stub(:new).with({'these' => 'params'}) { mock_department(:save => true) }
        post :create, :department => {'these' => 'params'}
        assigns(:department).should be(mock_department)
      end

      it "redirects to the created department" do
        Department.stub(:new) { mock_department(:save => true) }
        post :create, :department => {}
        response.should redirect_to(department_url(mock_department))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved department as @department" do
        Department.stub(:new).with({'these' => 'params'}) { mock_department(:save => false) }
        post :create, :department => {'these' => 'params'}
        assigns(:department).should be(mock_department)
      end

      it "re-renders the 'new' template" do
        Department.stub(:new) { mock_department(:save => false) }
        post :create, :department => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested department" do
        Department.should_receive(:find).with("37") { mock_department }
        mock_department.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :department => {'these' => 'params'}
      end

      it "assigns the requested department as @department" do
        Department.stub(:find) { mock_department(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:department).should be(mock_department)
      end

      it "redirects to the department" do
        Department.stub(:find) { mock_department(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(department_url(mock_department))
      end
    end

    describe "with invalid params" do
      it "assigns the department as @department" do
        Department.stub(:find) { mock_department(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:department).should be(mock_department)
      end

      it "re-renders the 'edit' template" do
        Department.stub(:find) { mock_department(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested department" do
      Department.should_receive(:find).with("37") { mock_department }
      mock_department.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the departments list" do
      Department.stub(:find) { mock_department }
      delete :destroy, :id => "1"
      response.should redirect_to(departments_url)
    end
  end

end
