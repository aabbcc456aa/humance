class SalaryItemsController < ApplicationController
  # GET /salary_items
  # GET /salary_items.xml
  def index
    @salary_items = SalaryItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @salary_items }
    end
  end

  # GET /salary_items/1
  # GET /salary_items/1.xml
  def show
    @salary_item = SalaryItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @salary_item }
    end
  end

  # GET /salary_items/new
  # GET /salary_items/new.xml
  def new
    @salary_item = SalaryItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @salary_item }
    end
  end

  # GET /salary_items/1/edit
  def edit
    @salary_item = SalaryItem.find(params[:id])
  end

  # POST /salary_items
  # POST /salary_items.xml
  def create
    @salary_item = SalaryItem.new(params[:salary_item])

    respond_to do |format|
      if @salary_item.save
        format.html { redirect_to(@salary_item, :notice => 'Salary item was successfully created.') }
        format.xml  { render :xml => @salary_item, :status => :created, :location => @salary_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @salary_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /salary_items/1
  # PUT /salary_items/1.xml
  def update
    @salary_item = SalaryItem.find(params[:id])

    respond_to do |format|
      if @salary_item.update_attributes(params[:salary_item])
        format.html { redirect_to(@salary_item, :notice => 'Salary item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @salary_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /salary_items/1
  # DELETE /salary_items/1.xml
  def destroy
    @salary_item = SalaryItem.find(params[:id])
    @salary_item.destroy

    respond_to do |format|
      format.html { redirect_to(salary_items_url) }
      format.xml  { head :ok }
    end
  end
end
