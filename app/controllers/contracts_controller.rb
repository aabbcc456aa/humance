class ContractsController < ApplicationController
  before_filter { |c| c.instance_variable_set(:@menu, :hr) }
  
  # GET /contracts
  # GET /contracts.xml
  def index
    @search = Employee.search(params[:search])
    @employees = @search.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @employees }
    end
  end

  # GET /contracts/1
  # GET /contracts/1.xml
  def show
    @contract = Contract.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contract }
    end
  end

  # GET /contracts/new
  # GET /contracts/new.xml
  def new
    @employee = Employee.find(params[:employee_id])
    @contract = @employee.contracts.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contract }
    end
  end

  # GET /contracts/1/edit
  def edit
    @employee = Employee.find(params[:employee_id])
    @contract = @employee.contracts.find(params[:id])
  end

  # POST /contracts
  # POST /contracts.xml
  def create
    
    @contract = Employee.find(params[:employee_id]).contracts.new(params[:contract])

    respond_to do |format|
      if @contract.save
        format.html { redirect_to(contracts_url, :notice => 'Contract was successfully created.') }
        format.xml  { render :xml => @contract, :status => :created, :location => @contract }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contract.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contracts/1
  # PUT /contracts/1.xml
  def update
    # @employee = Employee.find(params[:employee_id])
    @contract = Contract.find(params[:id])

    respond_to do |format|
      if @contract.update_attributes(params[:contract])
        format.html { redirect_to(contracts_path, :notice => 'Contract was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contract.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contracts/1
  # DELETE /contracts/1.xml
  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy

    respond_to do |format|
      format.html { redirect_to(contracts_url) }
      format.xml  { head :ok }
    end
  end
end
