class DashboardController < ApplicationController
  before_filter { |c| c.instance_variable_set(:@menu, :dashboard) }
  
  def show
  end

end
