class FormsController < ApplicationController
	before_action :authenticate_user!

	def index
		@forms = Form.all
	end

	def show
	  @form = Form.find(params["id"])
	end

def create
	form_params = params["form"].permit("name", "wins", "repass", "emoji")
  @form = Form.create(form_params)
  @form.user_id = current_user.id
  redirect_to(form_path(@form))
end

end
