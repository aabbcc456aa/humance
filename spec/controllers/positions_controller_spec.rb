require 'spec_helper'

describe PositionsController do

  def mock_position(stubs={})
    (@mock_position ||= mock_model(Position).as_null_object).tap do |position|
      position.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all positions as @positions" do
      Position.stub(:all) { [mock_position] }
      get :index
      assigns(:positions).should eq([mock_position])
    end
  end

  describe "GET show" do
    it "assigns the requested position as @position" do
      Position.stub(:find).with("37") { mock_position }
      get :show, :id => "37"
      assigns(:position).should be(mock_position)
    end
  end

  describe "GET new" do
    it "assigns a new position as @position" do
      Position.stub(:new) { mock_position }
      get :new
      assigns(:position).should be(mock_position)
    end
  end

  describe "GET edit" do
    it "assigns the requested position as @position" do
      Position.stub(:find).with("37") { mock_position }
      get :edit, :id => "37"
      assigns(:position).should be(mock_position)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created position as @position" do
        Position.stub(:new).with({'these' => 'params'}) { mock_position(:save => true) }
        post :create, :position => {'these' => 'params'}
        assigns(:position).should be(mock_position)
      end

      it "redirects to the created position" do
        Position.stub(:new) { mock_position(:save => true) }
        post :create, :position => {}
        response.should redirect_to(position_url(mock_position))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved position as @position" do
        Position.stub(:new).with({'these' => 'params'}) { mock_position(:save => false) }
        post :create, :position => {'these' => 'params'}
        assigns(:position).should be(mock_position)
      end

      it "re-renders the 'new' template" do
        Position.stub(:new) { mock_position(:save => false) }
        post :create, :position => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested position" do
        Position.should_receive(:find).with("37") { mock_position }
        mock_position.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :position => {'these' => 'params'}
      end

      it "assigns the requested position as @position" do
        Position.stub(:find) { mock_position(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:position).should be(mock_position)
      end

      it "redirects to the position" do
        Position.stub(:find) { mock_position(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(position_url(mock_position))
      end
    end

    describe "with invalid params" do
      it "assigns the position as @position" do
        Position.stub(:find) { mock_position(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:position).should be(mock_position)
      end

      it "re-renders the 'edit' template" do
        Position.stub(:find) { mock_position(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested position" do
      Position.should_receive(:find).with("37") { mock_position }
      mock_position.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the positions list" do
      Position.stub(:find) { mock_position }
      delete :destroy, :id => "1"
      response.should redirect_to(positions_url)
    end
  end

end
