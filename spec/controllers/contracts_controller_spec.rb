require 'spec_helper'

describe ContractsController do

  def mock_contract(stubs={})
    (@mock_contract ||= mock_model(Contract).as_null_object).tap do |contract|
      contract.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all contracts as @contracts" do
      Contract.stub(:all) { [mock_contract] }
      get :index
      assigns(:contracts).should eq([mock_contract])
    end
  end

  describe "GET show" do
    it "assigns the requested contract as @contract" do
      Contract.stub(:find).with("37") { mock_contract }
      get :show, :id => "37"
      assigns(:contract).should be(mock_contract)
    end
  end

  describe "GET new" do
    it "assigns a new contract as @contract" do
      Contract.stub(:new) { mock_contract }
      get :new
      assigns(:contract).should be(mock_contract)
    end
  end

  describe "GET edit" do
    it "assigns the requested contract as @contract" do
      Contract.stub(:find).with("37") { mock_contract }
      get :edit, :id => "37"
      assigns(:contract).should be(mock_contract)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created contract as @contract" do
        Contract.stub(:new).with({'these' => 'params'}) { mock_contract(:save => true) }
        post :create, :contract => {'these' => 'params'}
        assigns(:contract).should be(mock_contract)
      end

      it "redirects to the created contract" do
        Contract.stub(:new) { mock_contract(:save => true) }
        post :create, :contract => {}
        response.should redirect_to(contract_url(mock_contract))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved contract as @contract" do
        Contract.stub(:new).with({'these' => 'params'}) { mock_contract(:save => false) }
        post :create, :contract => {'these' => 'params'}
        assigns(:contract).should be(mock_contract)
      end

      it "re-renders the 'new' template" do
        Contract.stub(:new) { mock_contract(:save => false) }
        post :create, :contract => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested contract" do
        Contract.should_receive(:find).with("37") { mock_contract }
        mock_contract.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :contract => {'these' => 'params'}
      end

      it "assigns the requested contract as @contract" do
        Contract.stub(:find) { mock_contract(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:contract).should be(mock_contract)
      end

      it "redirects to the contract" do
        Contract.stub(:find) { mock_contract(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(contract_url(mock_contract))
      end
    end

    describe "with invalid params" do
      it "assigns the contract as @contract" do
        Contract.stub(:find) { mock_contract(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:contract).should be(mock_contract)
      end

      it "re-renders the 'edit' template" do
        Contract.stub(:find) { mock_contract(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested contract" do
      Contract.should_receive(:find).with("37") { mock_contract }
      mock_contract.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the contracts list" do
      Contract.stub(:find) { mock_contract }
      delete :destroy, :id => "1"
      response.should redirect_to(contracts_url)
    end
  end

end
