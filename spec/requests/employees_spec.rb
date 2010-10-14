require 'spec_helper'

describe "Employees" do
  describe "GET /employees" do
    it "should be able to work" do
      get employees_path
    end
  end
end
