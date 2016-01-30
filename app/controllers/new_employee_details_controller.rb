class NewEmployeeDetailsController < ApplicationController
def show
    @employee_details = NewEmployeeDetail.find(params[:id])
  end

def new
  end

def create
	 # render plain: params[:new_employee_details].inspect
byebug
result = Cloudinary::Uploader.upload('/Users/PassionToTravel/Documents/KTjoyGR8c.png');


	@employee_details = NewEmployeeDetail.new(new_employee_details_params)

 @employee_details.image_path = result["public_id"]
  @employee_details.save
  redirect_to @employee_details
  end


  private
  def new_employee_details_params
    params.require(:new_employee_details).permit(:zolo_id , :name , :image_path , :location  , :college , :organization, :department , :role , :hobbies , :dob , :about_yourself )
  end




end
