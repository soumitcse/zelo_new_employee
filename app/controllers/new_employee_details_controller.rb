class NewEmployeeDetailsController < ApplicationController
skip_before_action :authorize
def authemployees
  # byebug

   # @projects = Employee.find(params[:search])
   # @x = Employee.find_by code_digest: 'eiqj5bty0'
   # (Employee.find_by code_digest: params['code']).present?
   if ((Employee.find_by code_digest: params['code']).present?)
        @empid = (Employee.find_by code_digest: params['code'])['zoloid']
   else
      @empid = nil
   end
end

def show
    @employee_details_all = NewEmployeeDetail.all
    @employee_details = NewEmployeeDetail.find(params[:id])
  end

def new

  end



def create
  
	 @employee_details = NewEmployeeDetail.new(new_employee_details_params)  

  if @employee_details[:image_path].present?
      preloaded = Cloudinary::PreloadedFile.new(@employee_details[:image_path])         
      raise "Invalid upload signature" if !preloaded.valid?
      @employee_details.image_path = preloaded.identifier
  end
  
# @employee_details = NewEmployeeDetail.new(new_employee_details_params)	
 
  @employee_details.save
   redirect_to @employee_details


  end


  private
  def new_employee_details_params
    params.require(:new_employee_details).permit(:zolo_id , :name , :image_path , :location  ,:qualification, :college , :organization, :department , :role , :hobbies , :dob , :about_yourself )
  end





end
