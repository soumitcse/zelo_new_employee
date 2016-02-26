class AdminController < ApplicationController
	before_action :authorize
  def Index
  	@employee = Employee.new
  end
end
