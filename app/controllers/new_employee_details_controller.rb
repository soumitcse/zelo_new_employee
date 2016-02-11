class NewEmployeeDetailsController < ApplicationController

def show
    @employee_details_all = NewEmployeeDetail.all
    @employee_details = NewEmployeeDetail.find(params[:id])
  end

def new
  end



def create
	 
# byebug
@employee_details = NewEmployeeDetail.new(new_employee_details_params)
if params[:image_path].present?
  preloaded = Cloudinary::PreloadedFile.new(params[:image_path])         
  raise "Invalid upload signature" if !preloaded.valid?
  @employee_details.image_path = preloaded.identifier
end
 
 

	

 #@employee_details.image_path = result["public_id"]
  @employee_details.save
  redirect_to @employee_details
  end


  private
  def new_employee_details_params
    params.require(:new_employee_details).permit(:zolo_id , :name , :image_path , :location  , :college , :organization, :department , :role , :hobbies , :dob , :about_yourself )
  end




end
