class SalariesController < ApplicationController
  before_filter { |c| c.instance_variable_set(:@menu, :hr) }
    
  # GET /salaries
  # GET /salaries.xml
  def index
    @search = Employee.search(params[:search])
    @employees = @search.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @employees }
    end
  end

  # GET /salaries/1
  # GET /salaries/1.xml
  def show
    @salary = Salary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @salary }
    end
  end

  # GET /salaries/new
  # GET /salaries/new.xml
  def new
    @employee = Employee.find(params[:employee_id])
    @salary = @employee.build_salary

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @salary }
    end
  end

  # GET /salaries/1/edit
  def edit
    @employee = Employee.find(params[:employee_id])
    @salary = @employee.salary
  end

  # POST /salaries
  # POST /salaries.xml
  def create
    @employee = Employee.find(params[:employee_id])
    @salary = @employee.build_salary(params[:salary])

    respond_to do |format|
      if @salary.save
        format.html { redirect_to(@salary, :notice => 'Salary was successfully created.') }
        format.xml  { render :xml => @salary, :status => :created, :location => @salary }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @salary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /salaries/1
  # PUT /salaries/1.xml
  def update
    @employee = Employee.find(params[:employee_id])
    @salary = @employee.salary

    respond_to do |format|
      if @salary.update_attributes(params[:salary])
        format.html { redirect_to(@salary, :notice => 'Salary was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @salary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /salaries/1
  # DELETE /salaries/1.xml
  def destroy
    @salary = Salary.find(params[:id])
    @salary.destroy

    respond_to do |format|
      format.html { redirect_to(salaries_url) }
      format.xml  { head :ok }
    end
  end
end
