class AdminController < ApplicationController
	
  def Index
  	@employee = Employee.new
  end
end
